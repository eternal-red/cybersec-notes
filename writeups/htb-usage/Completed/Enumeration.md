
## Service Enumeration
`A section to take notes on things you've researched and tried with your vulnerability scans (so you don't end up redoing work you already did).`


## Vulnerability Enumeration
`A section to take notes on which services you've investigated, failed exploitation attempts, promising vulnerabilities/misconfigurations, etc.`


### Web Enumeration
#### important
- port: 80
- domain: usage.htb
- webserver: nginx/1.18.0
- OS: Ubuntu (Linux)
- cookies
	- laravel session
	- xsrf-token
#### pages
- login
- registration
- post-registration
- admin
- dashboard
- logout

#### potential 
- bootstrap 4.1.3
- X-XSS-Protection "protection"
- Xframe options
- hidden token with name "_token" and value "HIkN3z8sw1h5bkgei8Pj13tKMr68c2FioSxpVNmm"