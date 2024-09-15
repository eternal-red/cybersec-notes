### Notes
 - A web shell has to be written in the same programming language that runs the web server
 - If the file fuploads successfully but does not execute code, try additional extensions
 - burp showing green for data is fine

### jpeg bypass 
[File upload Webshell : Jpeg](https://yolospacehacker.com/hackersguide/toolbox.php?id=imgwebshell)
- If you can upload a jpg file, it is possible to hide a webshell in it.  
- A jpeg file is identified by its first bytes which have the value: ffd8ffe0  
To generate a file that will be identified as having a valid Jpeg header:
```
printf "\xff\xd8\xff\xe0<?php system('id'); ?>" > webshell.jpg
```
- This file will be recognized as a jpg file
```
$ file webshell.jpg 
webshell.jpg: JPEG image data
```

### Basic explotation
- One easy method to determine what language runs the web application is to visit the `/index.ext` page, where we would swap out `ext` with various common web extensions, like `php`, `asp`, `aspx`, among others, to see whether any of them exist.
- creating exploit
	- web shells
		- use antak, nishang
		- use oneliners
	- reverse shells
		- use one-liner
		- craft custom with msfvenom
- bypassing client side validation
	- modify upload request using a proxy
	- change front-end code to disable validations
- filters
	- test for blacklists
		- testing file extension
			- fuzz them for errors and sucesses
	- test for whitelists
		- include valid file extensions in file name but end in malicious extension
			- mess around with the order of jpg and mailcious extensions
			- can include triple extensions too
				- ie. script.php.jpg.php
		- double extensions
		- character injections
	- type filters
		- test request content-type header
		- change your MIME in your file
	- file content

### limited file upload

- html files allowed: potential for JS XSS attacks
- Images render metadata: potential for XSS attacks
	- image formats include (svg, jpg, png)
- XXE
	- injects XML code to read other files on the target system
		- useful for reading sourcecode which can lead to finding many more vulnerabilities

