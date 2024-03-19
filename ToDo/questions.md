
<font style="color:#CF0000"> how to read the man files of like   _ssh_config(5)_ for example </font>
- 5 is a reference that the type of man page is type 5, just type man ssh_config

<font style="color:#CF0000"> how do I put a payload crafted with msfvenom into msfconsole? </font>
- add file to `payload/generic/custom`  can call that file in msfconsole

<font style="color:#CF0000"> what is the difference between wc -c and ${#var}? </font>
- echo “string” | wc -c counts the exact number of characters in the string returned by echo, that is “string” plus a line break appended by echo, so 7 in that case. \${#var} returns the exact number of characters contained in the var variable. You can obtain the same behavior by specifying the -n flag to echo, which gets rid of the trailing \n. I
	- to fix add the `-n` flag to echo and the `-w 0` flag to base64, otherwise every 76 characters base64 adds a line break 
	
<font style="color:#CF0000"> why do websites display different pages when I go there with the hostname vs the ip:port?</font>
	- server configured to show different content based on how it is accessed
	- virtual hosts

- <font style="color:#CF0000"> how to identify existing exploits after port scanning and vulnerability scanning? </font>
	- do you just search for each /<version/>+exploit with full name?
	- you just paste full name and version of service on google and see what tangentially related exploits there are

<font style="color:#CF0000"> how do I use a custom payload in metasploit?</font>
- first create your payload/download it, then choose generic/custom or whichever relevant custom payload in msfconsole. Then for one of its options, set the file location to your payload or paste your payload string

is there a way to route browser traffice through a reverse shell?
- try editing routing table