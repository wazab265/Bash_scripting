#!/bin/bash

#Basic password generator
echo "This is a simple password generator"
read -p "Enter password length: " PWD_LEN

for P in $(seq 1 5) ; 
do #openssl is a library, base 64 is a characterset
	openssl rand -base64 48 | cut -c1-$PWD_LEN
done
