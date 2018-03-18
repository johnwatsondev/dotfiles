#!/usr/bin/expect -f
set user root
set host 45.76.138.35
set password c03325386
set timeout 30
#set timeout -1

#设置PS1的格式
#send "export PS1=\\\"\[\\\u]\\\\$\\\"\r"

spawn mosh $user@$host
expect "*assword:*"
send -- "$password\r"
#send -- "tD9=D%P3n\[88K!8Q\r"
interact
expect eof
