#!/bin/bash
#This script will enable users install packages
echo "Welcome to package management"
echo "Please enter the package you want to install"
read package
sudo yum install $package -y
echo "Your package has been installed successfully"
echo "Would you like to start a service? 'yes' to continue, 'no' to terminate "
read answer
if [ $answer -eq yes ]
then
echo " please enter the name of the service you want to start in this form 'httpd'or  'sshd' to continue"
read name
sudo systemctl enable $name
sudo systemctl start $name
sudo systemctl restart $name
else
echo " Thanks for using the package management script"
fi

