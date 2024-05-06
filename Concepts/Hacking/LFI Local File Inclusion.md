#### source code cmds that can be exploited
![[Screenshot 2024-05-02 at 6.12.10 PM.png]]

## Enumeration
- Fuzz for parameter names with Fuff
- figure out server webroot (ie. /var/www/html)
	- fuzz path to index.php
- identify log files



## LFI attacks
- path traversal: test if you can specify arbitrary files on the filesystem the website is hosted on 
- second order attack
	- store a variable on the server that is the name of your desired file
	- perform an operation you know will look up the parameter which will lookup the target file instead
	- Note: be aware of how the parameter's file location is changed by the system or how it is used as part of a file query.
- php filters for reading files
	- string, conversion, compression, encryption filters
- php filters for code execution
	- data, input, expect
	- Note: must match expected HTTP verb
- file upload
	- using web functions to execute file, thus file extension and type are irrelevant
	- add magic bytes and malicious code
- log poisoning
	- fill in parameters that will be written to logs with malicious code then specify the address of the log to be executed in a LFI field
	- Note: by calling the malicious file, we will override the parameters we replaced. Each time we run a cmd we have to rewrite the malicious parameters



## Bypasses
- doubling characters
	- ````php $language = str_replace('../', '', $_GET['language']);`
	- you can bypass this replacement with `....//`
- encoding
- possibly deprecated bypasses
	- path truncation
		- max size of 32 bit php applications is 4096 characters
		- you can intentionally create a long string that will have any file extension truncated
	- add a null byte/ white space so everything after it is ignored
- bypasses for code execution 
	- check if code execution for local file inclusion is allowed
	- host your malicious file on multiple protocols (ie. ftp)
- write php code within a real jpg file
- use zip and phar wrappers to bypass file upload checks
- figure out characters that are not blacklisted

### Notes
- The `?` indicates the start of the [query string](https://en.wikipedia.org/wiki/Query_string). Within the query string you have a set of `key=value` pairs, each separated by an `&`.

[LFI wordlist]([LFI Wordlist](https://github.com/danielmiessler/SecLists/tree/master/Fuzzing/LFI
`LFI-Jhaddix.txt`






## Box takeaways
- you need to enumerate files you have access too,  because some of them contain code that is executed before you can view it
	- php files can contain html code, they can basically be html code with php injected
	- php is never rendered client-side, always executed server-side first
	- you can view this php code by directly reading the php file
- when testing wordlist, you may have to test multiple times; changing the root directory, or number of `../`
