

### smb
- a network file sharing protocol
	- there are seperate shares that are avaliable to seperate users
		- use ```-L``` with smbclient to view all shares
- smbclient: tool to enumerate and interact with smb
	- acessing shares
		- format for shares ```\\ip\share```
		- if things don't work as expected try using escape characters
		- try ```-N``` to skip credentials
		- ```$``` at end of share means the share is typically hidden

snmp
- snmp 1 and 2 are unencrypted
	- snmpwalk \[community string\]: can be used to do snmp queries
	- information potentially accessible
		- network routes
		- credentials
		- services
			- version of services
	- onesixone: a tool that can bruteforce community strings
	