### ip stuff
- ```curl ifconfig.me```: gets ip
- ```nslookup <domain>```: finds the ip to a website
- curl
- python -m http.server
## ssh
- you can execute commands 
	- ```ssh [user@host] [commands]```
- you can specify your own shell
	- ```-t sh [file]``` (which reads file for some reason)
- errors
	- ```kex_exchange_identification: Connection closed by remote host```
	- connection disrupted, try again

## netcat
- you can send inputs directly to the port after setting up a netcat connection

#### client/server model

```nc -l \[port\]```: on one port
```nc \[ip\] \[port\]```: on another
client or server can be either


openssl

- how to connect to a port via ssl connection 
```openssl s_client -connect <hostname>:<port>```

## nmap

#### tips
- use ```-v or -vv``` to get status while nmap still running
- filtered port=unknown
- send your nmap output to a file so you can analyze it later


### port interaction
netcat/socat
- useful tools to redirect and send i/o in a network stream
- socat has more features than netcat
	- socat can forward ports
- 