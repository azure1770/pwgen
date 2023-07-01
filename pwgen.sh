#!/bin/bash
f_pwgen() {
# Define the characters to use in the password
characters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-="
# Generate the password
for length in 16 20 30
do
echo -e "\nYour $length character Password's are:"
for i in {01..10}
do
password=$(tr -dc "$characters" < /dev/urandom | head -c "$length")
echo -e "$i:" $password | sed 's/0/ /;s/1 /10/'
done
done
}
f_pwgen
