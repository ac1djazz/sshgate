#!/bin/bash

server_list=$(cat server.list | awk '{print $1 " "}' dq='"' | tr -d '\n') 
PS3="Choose server:"
select OS in  $server_list
do
echo 
echo "You choice $OS"
echo
break
done
server_choice=$(cat server.list| grep $OS | awk '{print $2}')
login_choice=$(cat server.list | grep $OS | awk '{print $3}') 
echo "You used" $login_choice
ssh -l $login_choice $server_choice 