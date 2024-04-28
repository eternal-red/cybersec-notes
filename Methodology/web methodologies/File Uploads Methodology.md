
- [ ] look for file upload form 
	```
	<input type="file" name="uploadFile" id="uploadFile" onchange="showImage()"   accept=".jpg,.jpeg,.png">
	
	<input type="submit" value="Upload" id="submit">    
	```
	![[malicious_upload.jpeg]]
- [ ] look for client site validation
	```
	onsubmit="if(validate()){upload()}"
	```
	- [ ] look through frontend code
	- [ ] run through proxy 
- [ ] fuzz file extensions
	- [ ] include valid file extensions name in file name but end in malicious extension
	- [ ] multiple extensions
- [ ] fuzz type
	- [ ]  fuzz content type headers
	- [ ] fuzz MIME 
- [ ] try to find path of uploaded files
	- [ ] create payload based on that
		- [ ] try to read sourcecode
		- [ ] try to make shell
- [ ] try to inject commands or code into parameters associated with upload
	- [ ] XXE attack
	- [ ] 

### shells
[poc php webshell](https://gist.githubusercontent.com/sente/4dbb2b7bdda2647ba80b/raw/31218294e74361df73215b44a219af3b95945618/Simple-Backdoor-One-Liner.php)
[phpbash](https://github.com/Arrexel/phpbash)

### payload lists
[file upload guide](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Upload%20Insecure%20Files/README.md)



## Notes
- escape characters may bypass filters, but they may also break the payload and make it unusable
- mime type can be mimicked by changing the magic bytes in the file before uploading or using a image file but then deleting its payload and replacing it with your payload while keeping the mime
	- mime characters can't rly be copied
- very important to find sourcecode, be sure to read sourcecode of files you don't have access too (ie upload.php), reading code of frontend files doesn't help (index.php)

idea when hacking, write down what I've down and before trying something again look and see if ive done it 