software
- WEBrick 1.7.
- nginx


potential vectors
- sinatra ditty command injection
	- /images
- xss on forms 
	- /weighted-grade
	- potential for xss
		- do Command injection on number parameters (looks like they are directly used in a ruby webbrick toolkit)

### takeaways
- forms are a vector for both XSS and command injection
- 
- encode your payloads in base64 if it doesn't work