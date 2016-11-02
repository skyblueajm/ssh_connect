used : .ssh_connect/.conn {hostname and ip or option}
    Option :
              -i : ip absolute value print
              -d : domain absolute value print
              -l : domain status print
              -L : server list print
              -I {sub option} : server list insert
                 --type=<list type value> : server type
                         server type : 
                 --id=<ssh login id value> : login ID
                 --host=<hostname value> : server hostname
                 --ip=<ip address value> : server ip
                 --commant=<commant> : server remark
                 example) con -I --host=test4 --ip=172.16.0.1 --port=2222 --id=test --type=Dev_Server --commant=test aaaa dddd bbbb
              -t <value> : All list outputs that depend on the server type
                         server type :

              -D {sub option} : server list delete
                 --host=<hostname value> : server hostname
                 --ip=<ip address value> : server ip
                 example) con -D --host=test4 --ip=11.1.1.1

              -U {sub option} : server list modifying
                 --host=<old hostname>/<new hostname> : change hostname
                 --ip=<old server IP>/<new server IP> : change IP
                 --port=<old server IP>:<old port>/<new server IP>:<new port> : change IP and port
                 --id=<old ID>:<old hostname>/<new ID>:<new hostname> : change ID and hostname
                 --type=<old Type>/<net Type> : change Type

              -A {sub option} : Server Type input
                 --type=<list type value> : server type

              -R {restore time} {option}
                 Restore Time :
                     restore time format : YYYYMMDDHHmmss
                     data recovery list :
			           Option :
                     --remove : restore data remove
                     --restore : restore data

  Connection to the server is not in the list
  .ssh_connect/.conn {user id}@{hostname or server ip}:{port} {option}
      Option :
              -p <port number> : ssh connect port
              -u <user id> : user id
