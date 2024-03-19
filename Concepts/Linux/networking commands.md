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


### interfaces
- `sudo ifconfig eth0 up`
	- sets interfaces up and down
- you can assign a netmask and other parameters of the interface through `ifconfig`
- you can add routes to the interface (so you can actually communicate with other devices on that interface's network) using `route`
	- important to set route to DNS server
	- address of DNS servers used are stored in /etc/resolv.conf
- note
	- must restart networking service for any of these changes to activate
	- for any changes to save, you must write them in `interfaces` file?

### network security
- tcp wrappers
	- restricts access to services for clients
	- files
		- /etc/hosts.allow
		- /etc/hosts.deny
- common network vulnerabiltiies
	- Removing or disabling all unnecessary services and software
	- Removing all services that rely on unencrypted authentication mechanisms
	- Ensure NTP is enabled and Syslog is running
	- Ensure that each user has its own account
	- Enforce the use of strong passwords
	- Set up password aging and restrict the use of previous passwords
	- Locking user accounts after login failures
	- Disable all unwanted SUID/SGID binaries

### firewalls
- 
- netfilter framework is commonly used to intercept and modify traffic for firewalls