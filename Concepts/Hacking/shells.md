types of shells
- `Reverse Shell`Connects back to our system and gives us control through a reverse connection. (more fragile)
	- setup
		- ` nc -lvnp 1234` on your own device
		- execute a reverse shell cmd on target
	- use if target is behind a firewall 
- `Bind Shell`Waits for us to connect to it and gives us control once we do.
	- try to use ideally (more stable)
	- process
		- target hosts a shell on a port open to connections
		- you connect to that port and get that shell
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


Note
- mkfifo creates a named pipe which is allows input and output to pass through the specified file




### getting and upgrading shell
- When considering what payload to make for a Unix/Linux system, we will benefit from considering the following
	- what distribution of Linux is the system running?
	- What shell & programming languages exist on the system?
	- What function is the system serving for the network environment it  is on?
	- What application is the system hosting?
	- Are there any known vulnerabilities?
- determine if reverse or bind shell is better
- is there a server side scripting language? (use a shell template)
	- Laudanum, Antak (much more powerful Nishang shell)
- find all available shells on the target
- spawning interactive shells
	- directly spawn a shell from binary
	- use a programming language to spawn a shell calling shell binary)
	- you can use vim to spawn a shell
- check perms if you can't find anything