
### networking configurations
- network interfaces
	- you can see and manually modify your network interfaces with ```ip or ifconfig```
- routing
	- use ```route or ip``` to change the routing table for your device
- dhcp
	- dhclieent: obtains a new dhcp ip address
- find networking devices on your subnet
	- find router:  `netstat -nr | awk '$1 == "0.0.0.0"{print$2}'`
- find devices on current subnet
	- arp -a 
-  
### troubleshooting
- ping
	- The icmp_seq field is used to show the sequence number of packets sent, so in this case, I sent out 3 packets and we can see that 3 packets made it back. If you do a ping and you get some sequence numbers missing, that means that some connectivity issue is happening and not all your packets are getting through. If the sequence number is out of order, your connection is probably very slow as your packets are exceeding the one second default.
- traceroute
	- traceroute command is used to see how packets are getting routed
- packet analysis
	- scan your network interfaces, capture the packet activity, parse the packages and output the information
	- use ```Wireshark``` (tcpdump can do simplier stuff in the cmdline)
### DNS
- you can specify certain dns mappings in the "/etc/hosts" file
	- for if root servers don't know a dns
	- has priority over the root server dns
- dns name servers
	- **/etc/resolv.conf** is used to map dns name servers
	- is not managed manually on modern systems
- DNS tools
	- dig and nslookup





### routing
- for entries in the table, if the destination is in a specific range, you send the packet to the specified gateway