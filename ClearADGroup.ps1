
$logFile = ".\OURG_$(Get-Date -Format "MM-dd-yyyy-HH-mm").txt" # create text log file + date 
$text_simple = "====================================================================="
$Users_dismissed = (Get-ADUser -SearchBase "OU=Dismiss,DC=org,DC=romashka,DC=com" -Filter {enabled -eq $False} -Properties *).SamAccountName
foreach ($user in $Users_dismissed) {
    
    Get-ADUser -Identity $user -Properties MemberOf | ForEach-Object {
            $_.MemberOf | Remove-ADGroupMember -Members $_.DistinguishedName -Confirm:$false -Verbose
            $user_member = @((Get-ADPrincipalGroupMembership $user).name)
            if ($user_member.Length -ne 1) {
                $HashData = @($user, $user_member, $text_simple)
                Add-Content -Path $logFile -Value $HashData
            }
    }
}
