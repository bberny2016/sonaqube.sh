#!/bin/bash

Author :Berny
Date : June 21 2022
# Description : installation of sonarqube in centos7

###STEP1: #!/bin/bash






#( Sonarqube doesnt  work when you start it  as root user).


#step1: Java 11 installation


sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

#step2: Download SonarQube latest versions on your server

cd /opt

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

#Step 3: Extract packages

sudo yum install unzip

sudo unzip /opt/sonarqube-9.3.0.51899.zip

#Step4: Change ownership to the user and Switch to Linux binaries directory to start service

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

 cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

 ./sonar.sh start


 #Connect to SonaQube
#Connect to the SonarQube server through the browser. It uses port 9000.

#http://<your-ip-address>:9000
#NB: Some servers have firewall enabled. So if you are not able to connect from the brow
#http://<your-ip-address>:9000
#NB: Some servers have firewall enabled. So if you are not able to connect from the browser, then you might want to open the port 9000 with this command: 

sudo  systemctl start firewalld

sudo systemctl enable firewalld

 sudo firewall-cmd --permanent --add-port=9000/tcp

sudo firewall-cmd --reload


#Here are the default credentials for access:

#Login: admin

#Password: admin

