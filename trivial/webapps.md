- parts of the backend
	- backend server: hosts all the other parts, platform/architecture where the actual processing takes place
	- web server: handles http requests and connections (sessions?)
	- database: where the webapp's data is stored
	- web application: unique application code of the website
- urls are all encoded in ASCII
	- characters such as spaces need to be encoded if sent as part of a link



potential attack vectors of webapps
- enumerate software of the webapp
	- look for public exploits
- enumerate frontend code (html, css, js) for all directories and files
	- look for directory listing, file traversal
		- sensitive data exposure
	- test website's sanitization
		- HTML injection
		- XSS
		- CSRF
	- other
		- broken authentication/access control
		- file upload 
		- command injection
		- sql injection