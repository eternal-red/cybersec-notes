- overview
	- wordpress is a CMS
		- requires a LAMP stack (Linux, Apache, MySQL, PHP)
	- CMS is a way to make websites without physically coding it (ie. squarespace)
		- CMA is the interface used to add content
		- CDA is the backend that takes result of CMA and transforms it into code 
	- wordpress 
		- wordpress file structure
			- all wordpress files and directories accessible at /var/www/html
		- important files 
			- `index.php/html` is the homepage of WordPress.
			- `license.txt` contains useful information such as the version WordPress installed.
			- `wp-activate.php` is used for the email activation process when setting up a new WordPress site.
			- `wp-admin` folder contains the login page for administrator access and the backend dashboard.
			- `wp-content` folder is the main directory where plugins and themes are stored. The subdirectory `uploads/` is usually where any files uploaded to the platform are stored.
	- wordpress has user tiers and typically administrator is needed to get code execution on the server
	- version enumeration
		- reviewing page source code can reveal wordpress version number 
			- look at source code, css, and js, readme.html
		- plugins and theme enumeration
			- wfuzz, WPscan are tools that automate this process
			- deactivated plugins can still have its scripts and functions accessed
```
curl -s -X GET http://blog.inlanefreight.com | sed 's/href=/\n/g' | sed 's/src=/\n/g' | grep 'themes' | cut -d"'" -f2
```
- enumerating users
	- try fuzzing the parameter of the author query string to discover usernames
		- if user does not exist you will get a 404 error
```
curl -s -I -X GET http://blog.inlanefreight.com/?author=100
```
- view the json endpoint
```
curl http://blog.inlanefreight.com/wp-json/wp/v2/users | jq
```
- try to use the xml-rpc api to make system changes
	- [basics](https://the-bilal-rizwan.medium.com/wordpress-xmlrpc-php-common-vulnerabilites-how-to-exploit-them-d8d3c8600b32)
- wpscan
	- api token is needed for wpscan to report vulnerabilities, otherwise it just reports the softwares and versions it finds
	- has a built in brute-forcer
