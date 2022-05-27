# ClearADGroup
Delete dismiss users on group in active directory

This script works in an OU with laid-off employees.

Passing each user removes him from the groups in which he is located.

In the condition, work is performed on users who have more than one group ("domain users" by default).

It is possible to put in the task scheduler - every day at the end of working hours, for example at 18 o'clock. As a result, we get clean groups, without inactive accounts.

Данный скрипт работает в OU с уволенными сотрудниками.

Проходя каждого пользователя удаляет его из групп в которых он находиться.

В условии работа выполняется над пользователями которые имеют более одной группы ( по умолчанию "пользователи домена" ). 

Возможно поставить в планировщик заданий - каждый день в конце рабочего времени, например в 18 часов. В результате получаем чистые группы, без неактивных учетных записей.
