#!/usr/bin/expect -f
set user root
set host 45.76.138.35
set password c03325386
set timeout 30
#set timeout -1

spawn ssh $user@$host
expect "*assword:*"
send "$password\r"
interact
expect eof
