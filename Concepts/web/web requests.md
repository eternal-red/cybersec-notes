### (http/https)

### HTTP
URL structure
![[url fields.png]]

### HTTP Requests
- Devtools (F12)
	- Network Tab: displays list of requests sent by the page
	- Responses Tab: contains body of the network response
	- Storage Tab: holds cookies of session
	- Note
		- The availability of a particular method depends on the server as well as the application configuration
		- Option to copy Devtools Requests with curl format
- HTTP Authorization Headers
	- unconventional ways to supply credentials
		- `curl -u`
		- in the url
		- supply a header 
	- Note
		- Most modern web servers don't accept credentials supplied with GET
