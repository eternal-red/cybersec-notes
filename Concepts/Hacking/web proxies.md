
important concepts
- CA certificate: HTTPS traffice will not get properly routed if you don't have a CA certificate[explanation](https://portswigger.net/burp/documentation/desktop/external-browser-config/certificate#:~:text=To%20use%20Burp%20Proxy%20most,browse%20HTTPS%20URLs%20as%20normal.)
- A proxy: sends traffic from browser to a MITM device
- interceptor: a tool to manipulate traffic held by the proxy

### functionality, tools
- `interceptor`: a tool to manipulate traffic held by the proxy
- `repeater`: lets you keep and repeat a request
- `history`: view all requests, responses through the proxies
- `encoder`: encodes and decodes parameters in url or headers
- `intruder`: can be used to fuzz, enumerate directories, and brute force parameters
	- set options for what is considered failure, etc.
	- `ZAP has unthrottled fuzzing`
- `Scanner/Spider`: automatic enumerator and vulnerability detector
### features
- you can intercept the responses and edit them (easier than using devtools)
- there is a find and replace feature
- there is a rules feature
	- interceptor: you have have certain modifications applied to all incoming or outgoing traffic
	- intruder: you can apply rules for to exclude certain payloads using regex
- both burp and zap have extensions that can be downloaded 


### routing web traffic from command line
- proxychains
	- need to edit /etc/proxychain.conf to specify the proxy to route to
- nmap 
	- nmap flag
	- `nmap --proxies http://127.0.0.1:8080 SERVER_IP -pPORT
- metasploit
	- option
	- `msf6> set PROXIES HTTP:127.0.0.1:8080
	
