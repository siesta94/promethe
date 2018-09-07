#!/bin/bash
echo  " ---------------------------------------- "
echo  "          Prometheus and Grafana          "
echo  " ---------------------------------------- "



read -p "Enter the number of servers you want to run script on: " n
for (( i = 0; i<n; i++ ))
do
  read -p "Please enter IP of the host: " ip
  echo $ip >> inventory/hosts
done

ansible-playbook -i inventory/hosts playbook.yml
echo "" > inventory/hosts
