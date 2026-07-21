#!/bin/bash

#Check if Docker is installed
if ! command -v docker > /dev/null 2>&1; then
   echo "Docker is not Installed, Installing...."
   #Check if curl is installed
   if ! command -v curl > /dev/null 2>&1; then
      sudo apt install curl -y
   fi
   curl -fsSL https://docker.com -o get-docker.sh
   sudo sh get-docker.sh
else
   echo "Docker is already installed."
fi

#Check if Docker services is enabled
if ! systemctl is-active --quiet docker; then
    echo "Enabling Docker services....."
    sudo  systemctl start docker
    sudo  systemctl enable docker
else
    echo "Docker services is already enabled."
fi
echo "Docker setup Complete!"

#Kill any mysql active containers (if any)
container_id=$(sudo docker container ls --filter "ancestor=mysql" -q)
if ! [[ -z $container_id ]]; then
   echo "Existing running mysql container found and being deleted.."
   sudo docker rm $container_id -f
fi

#pull and run the mysql container
sudo docker run --rm --name mysql-db -h mysql-db -e MYSQL_ROOT_PASSWORD=P@ssw0rd -d mysql:latest && echo "mysql container is running..."

for ((attempt = 1; attempt <= 9; attempt++)); do
    if sudo docker exec mysql-db mysql -uroot -pP@ssw0rd -e "SELECT 1;" > /dev/null 2>&1; then
       echo "Connected to mysql database engine successfully"
       break
    else
        echo "Connection failed to mysql engine.attempting reconnection $attempt/9"
        sleep 5
    fi
done

#Create a mysql db and table (تم إكمال السطر المقطوع لتطابق حقول الـ passwd كاملة)
sudo docker exec -i mysql-db mysql -w --show-warnings=0 -uroot -pP@ssw0rd -e "CREATE DATABASE IF NOT EXISTS namesdb; USE namesdb; CREATE TABLE IF NOT EXISTS passwd (username VARCHAR(50), password_placeholder VARCHAR(10), uid VARCHAR(10), gid VARCHAR(10), comment VARCHAR(100), home_dir VARCHAR(100), default_shell VARCHAR(100));"

#Read /etc/passwd and extract user Info (تصحيح الأخطاء الإملائية والرموز وتعديل الحقول لتطابق الـ passwd الأصلي)
_usernames=$(cut -d: -f1 /etc/passwd)
_uids=$(cut -d: -f3 /etc/passwd)
_gids=$(cut -d: -f4 /etc/passwd)
_comments=$(cut -d: -f5 /etc/passwd)
_home_dirs=$(cut -d: -f6 /etc/passwd)
_default_shells=$(cut -d: -f7 /etc/passwd)

# Now we need to rebuild the arrys due to cut doesnt put them in propper format
declare -a usernames uids gids comments home_dirs default_shells

n=0
for name in $_usernames
do
    usernames[n]=$name
    ((n++))
done

n=0
for uid in $_uids
do
    uids[n]=$uid
    ((n++))
done

n=0
for gid in $_gids
do
   gids[n]=$gid
   ((n++))
done

n=0
for comment in $_comments
do
    comments[n]=$comment
    ((n++))
done

n=0
for home_dir in $_home_dirs
do
    home_dirs[n]=$home_dir
    ((n++))
done

n=0
for defualt_shell in $_default_shells
do
    default_shells[n]=$defualt_shell
    ((n++))
done

#Validation of the array (تصحيح الـ Syntax الخاص باستدعاء المصفوفة وإضافة علامات الـ $)
for ((i=0;i<$n;i++))
do
    sudo docker exec -i mysql-db mysql -w --show-warnings=0 -uroot -pP@ssw0rd -e "USE namesdb; INSERT INTO passwd VALUES('${usernames[i]}', 'x', '${uids[i]}', '${gids[i]}', '${comments[i]}', '${home_dirs[i]}', '${default_shells[i]}');" 2> /dev/null
done

echo "Process Finished Successfully!"
