### ps
```
PID TTY STAT TIME CMD  
41230 pts/4 Ss 00:00:00 bash  
51224 pts/4 R+ 00:00:00 ps
```
- PID: Process ID
- TTY: Controlling terminal associated with the process (we'll go in detail about this later)
- STAT: Process status code
- TIME: Total CPU usage time
- CMD: Name of executable/command
### ps aux
```
```
- USER: The effective user (the one whose access we are using)
- PID: Process ID
- %CPU: CPU time used divided by the time the process has been running
- %MEM: Ratio of the process's resident set size to the physical memory on the machine
- VSZ: Virtual memory usage of the entire process
- RSS: Resident set size, the non-swapped physical memory that a task has used
- TTY: Controlling terminal associated with the process
- STAT: Process status code
- START: Start time of the process
- TIME: Total CPU usage time
- COMMAND: Name of executable/command

### commands
- top: real time update of processes
- the /proc file holds files containing the full information on all processes and is what the kernel reads
- kill: can be used to send all the sigs (ie. sigterm, sigkill, sigstop)
	- -l: gives you list of all available processes

## Concepts
#### TTY/PPY
- TTY: real terminals, not pseudo terminals
	- Macs only have 1 configured
- PTY: allocated on request, can create terminal emulators like xtrem and GNOME
- processes are usually bound to a controlling terminal such that if the terminal is closed the processes are killed
- daemon processes have no associated process (listed as ```?```)
#### Parents/Children
- PPID: id of the parent process
- init has PID 1 and is the highest parent
- new processes
	- new processes are created through forking (cloning) existing processes
	- then the child process can start a new program through execve
- killing parent process does not kill child process
	- the child process (orphan process) gets reassigned with init as its parent
	- immediately gets killed?

### signals
- signals are how the kernel communicates with processes
- processes can ignore certain signals using a signal mask
	- they can't ignore sigkill
	- signal masks are built into a process
		- sigprocmask() is a function in the POSIX_SOURCE library that lets you manage process signals
- learn more with signal(3) for mac, signal(7) for linux
```
the following command can be used to manually send signals to processes:
kill [sig] [pid]
```
#### process states
- R: running or runnable, it is just waiting for the CPU to process it
- S: Interruptible sleep, waiting for an event to complete, such as input from the terminal
- D: Uninterruptible sleep, processes that cannot be killed or interrupted with a signal, usually to make them go away you have to reboot or fix the issue
- Z: Zombie, we discussed in a previous lesson that zombies are terminated processes that are waiting to have their statuses collected
- T: Stopped, a process that has been suspended/stopped, waiting for sigcont

#### zombie processes
```
user@dir > ps -el|grep Z

greps for zombie processes
```
- how to kill zombie processes
	- kill -9
	- kill the parent
	- try to kill with other signals
	- wait cmd
#### niceness
- how much runtime a process gets
- ```nice```: can be used to change runtime
- -20 critical, 19 not critical

#### job management
- you can send user created processes into the background
- ```jobs```: let's you view all 
- ```&```: backgrounds processes
- ```bg/fg```: to background and unbackground processes