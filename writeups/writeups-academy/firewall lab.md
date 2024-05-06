- if OS version detection fails you may still be able to get target system OS through banners from their web server
- if you discover filtered ports, you can progress by trying to connect to them
```ncat -nv --source-port 53 10.129.2.28 50000```
	-  what does this even do??
- if you don't have enough information, use scripts to get more