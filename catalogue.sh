#Install NodeJS, By default NodeJS 16 is available, We would like to enable 20 version and install list.
component_name=catalogue
source common.sh

nodejs


cp catalogue.service /etc/systemd/system/catalogue.service
cp mongo.repo /etc/yum.repos.d/mongo.repo
useradd roboshop
mkdir /app 
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip 
cd /app 
unzip /tmp/catalogue.zip

cd /app 
npm install 


dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.vidyapractice.shop </app/db/master-data.js

systemd_setup