
### curl

- -k: send web request and skip checking https certificate
	- allows us to receive web requests even if the server doesn't have a valid ssl certificate
- -v: print both requests and response
- -I: to request all headers from the web address
- -H: set a header
	- use multiple `-H` to set multiple headers
	- if not set headers will be default headers
Get Requests
- -u: provide creds
	- \[user:pw\]
Post Requests
- -X POST: signals post request
- -d '{content}': to append data to the POST request
	- if used specify content type headings
- -L: to follow redirection of curl 

jq: prettifies pp output


Nmap
- list and description of nmap scripts
	- https://nmap.org/nsedoc/scripts/

html2text
- converts html code to readable text in the terminal

systemctl
- used to manage services run by both users and daemons
journalctl
- logs the status of services