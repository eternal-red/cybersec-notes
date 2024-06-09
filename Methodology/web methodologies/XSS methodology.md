- [ ] find anywhere input is rendered (ie. forms)
- [ ] identify parameters and headers
- [ ] identify if XSS is blind (ie. is content of parameters displayed after submitting)
- [ ] identify type of XSS
- [ ]  try to find how parameter and header input is handled
	- [ ] try to get an error or xss execution
		- [ ] find html tags or escape characters that allow code execution
			- [ ] find js functions that actually do target payload
- [ ] try to have payload connect to your own server
- [ ] write your own payload in a js file
	- [ ] use js dom manipulation



(find xss payload list, poc)
https://github.com/payloadbox/xss-payload-list 
https://github.com/s0md3v/XSStrike  (only reflected and dom screening)
(find xss actual payload)