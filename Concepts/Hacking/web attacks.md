## HTTP Verb Tampering
- change http verb to bypass input checks
	- this may allow you to input malicious input that will not get blocked
## IDOR
- retrieving files you are not suppose to by recognizing hidden parameters
	- php parameters
- some hidden parameters may not even be shown
	- however they can be discovered by fuzzing or reading sourcecode
	- these parameters are meant for admins but if not properly restricted, any user can pass input into them
- when object references are guessable allowing you to access stuff you shouldn't


enumerate all files by:
- [ ] continuing predictable pattern of parameter input
- [ ] figuring out encoding/hashing of parameters and copying that
- [ ] change parameters describing user's roles
	- [ ] use a combination of get and other requests to enumerate and exploit idors


## XXE
-  injecting xml code to reference files we're not suppose to (sourcecode)
	- small chance of code execution too
- some websites are vulnerable to xxe, if you change the content type to xml
- some characters are not allowed in xml syntax
	- we need encoding wrappers to use them
- try many keywords
- referencing variables
	- start with `&` end with `;` ie. `&company;`
- you can read data with special characters by putting it in a cdata tag
	- we need other variables to hold the cdata tag syntax to wrap the expected content of the returned stuff
	- we need to join them to make it work
	- we need the variables to be external to join them
	- we can do this by hosting the join statement on our server and reading it 


XXE:
- [ ] first figure out if website accepts xml input
- [ ] figure out if xxe is blind
	- [ ] figure out if xxe shows input in sucess msgs
	- [ ] figure out if xxe shows input in error msgs
- [ ] try variable substitution
	- [ ] filter keyword
	- [ ] expect keyword
- [ ] try methods to bypass xml formatting
	- [ ] cdata
	- [ ] error
- [ ] host a php server that will catch content in the case of blind xxe

useful tool
[xxeinjector](https://github.com/enjoiz/XXEinjector)
