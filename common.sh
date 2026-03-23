#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-roboshop"
LOGS_FILE="$LOGS_FOLDER/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SCRIPT_DIR=$PWD
MONGODB_HOST=mongodb.jyothiy.online
START_TIME=$(date +%s)


mkdir -p $LOGS_FOLDER 

echo "$(date "+%Y-%m-%d %H:%M:%S") | script started executing at: $(date)" | tee -a $LOGS_FILE

check_user(){
    if [ $USERID -ne 0 ]; then
        echo -e "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
        exit 1
    fi
}
  

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$(date "+%Y-%m-%d %H:%M:%S") $2 ... $R FAILURE $N" | tee -a $LOGS_FILE
        exit 1
    else
        echo -e "$(date "+%Y-%m-%d %H:%M:%S") $2 ... $G SUCCESS $N" | tee -a $LOGS_FILE
    fi
}

print-total-time(){
    END_TIME=$(date +%s)
    TOTAL_TIME=$((END_TIME - START_TIME))
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") Total execution time: $TOTAL_TIME seconds" | tee -a $LOGS_FILE
}
