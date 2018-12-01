#!/bin/bash

echo User auto-add UND-ARC
echo Adding user $1

useradd -M -d /home/$1 $1
echo -e "$1\n$1" | passwd $1
chown -R $1:$1 /home/$1

echo Done!
