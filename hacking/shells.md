types of shells
- `Reverse Shell`Connects back to our system and gives us control through a reverse connection. (more fragile)
	- setup
		- ` nc -lvnp 1234` on your own device
		- execute a reverse shell cmd on target
	- use if target is behind a firewall 
- `Bind Shell`Waits for us to connect to it and gives us control once we do.
	- try to use ideally (more stable)
	- hosts a target's shell on a port open to connections
- `Web Shell`Communicates through a web server, accepts our commands through HTTP parameters, executes them, and prints back the output.
	- upload shell script to server
	- execute script
		- through visiting webpage
		- sending cmd through web


upgrading tty
- `python/stty` method
	- ``python3 -c 'import pty; pty.spawn("/bin/bash")'``
		- can turn web shells to tty shells and unlock programs like sudo
	- bg shell
	- fg shell



- tons of shells  scripts
	- https://swisskyrepo.github.io/InternalAllTheThings/cheatsheets/shell-reverse-cheatsheet/








 