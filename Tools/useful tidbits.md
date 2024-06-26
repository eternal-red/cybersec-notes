

- use  ```./*``` as arg when wanting to search for all files 
- use  ```2>/dev/null``` to suppress all error messages from showing up
- use ```head -n[#]``` to show first # lines of a file
- use cyberchef for auto decoding
- if file is incomprehensible, use file to check the file type and then uncompress or decode it accordingly
- scp is done on user end not remote end
- order of cmds really matter
	- try flipping cmds if things aren't expected
- aliases
	- you can create abbreviations for text with aliases
	- alias [placeholder]=[real command]
		- only lasts until system reboot
	- create permanat aliases through writing in ~/.bashrc
	- undo aliases with unalias
- $SHLVL: denotes how many shells deep you're in
- `'stuff'`single quotes are interpreted as plaintext, `"stuff"` is interpreted as scripting or regex
- [CTRL] + [←] / [→]  lets you move by words instead of characters
- three ways to chain commands
	- Semicolon (;), (&&) also (||), Pipes (|)
- `systemctl show <service>` outputs all available properties for a service
- Pipe only redirects standard out, so standard error will show up regardless of how you manipulate the standard out after the pipe
- `tail -f file`: lets you actively read a file as its being written
- stderr and stdout may not be processed correctly in a webshell and cmds will not persist between them. Thus try doing negative filtering instead of `2>dev/null`


### nano
- ctrl+k: deletes line
- ctrl+^: chooses multiple lines


### tmux
- ctrl-b + C
	- creates new windows
- ctrl-b + %
	- splits terminal vertically
- ctrl-b + "
	- splits terminal horizontally
- ctrl-b + [
	- lets you scroll around
- ctrl-b + x
	- kill panes and windows
- ctrl+R
	- view command history
- note
	- tmux shells do not die if the terminal they are in is killed
	- each tmux pane is a individual shell process

### trap
- constantly listens and conditionally executes a command if another is executed
- is not a process itself
