
$database = Read-Host -Prompt "Database"
$username = Read-Host -Prompt "MySQL user"
$password = Read-Host -Prompt "MySQL password"
$hostname = Read-Host -Prompt "Remote MySQL host"
$allowUnsafe = Read-Host -Prompt "Allow unsafe operations (i.e. TRUNCATE) (y/n)"

# 1. Initialize skeema
wsl --user root ./utils/skeema-init.sh -d $database -u $username -p $password -h $hostname

# 2. Dump local schema
rm ./skeema/$database/*.sql
mysqldump --no-data --host=localhost --user=$username --password=$password --tab=skeema/$database $database

wsl --user root ./deploy.sh -d $database -u $username -p $password -a $allowUnsafe