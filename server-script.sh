#! /bin/bash

sudo yum install java17 -y
sudo yum install git -y
sudo yum install maven -y

if [ -d "addressbook"]
then
    echo "repo is cloned and exists"
    cd /home/ec2-user/addressbook
    git pull origin sept-demo1
else
    git clone https://github.com/AmitChakarvarty/addressbook.git
fi


cd /home/ec2-user/addressbook

mvn package