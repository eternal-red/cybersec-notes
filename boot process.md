### overview
- BIOS/UEFI
	- make sure BIOS/UEFI code not tampered with
	- make sure necessary hardware is operational
	- finds OS files
- BootLoader
	- find Kernel parameters
	- find Kernel files
- Kernel
	- mounts the filesystem
	- starts init
- Init
	- starts operating system processes
### kernel
- handles: process management, memory management, device communication, system calls, 
	- (ie. talk to hardware, makes sure it does what our cmds tell it to do)
- privilege levels
	- amount of access you're given to hardware
	- ring 0: kernel, has complete access to all hardware
	- ring 3: all users (including root)
		- however root is given many syscall permissions which let it interact with lots of hardware
- syscalls
	- user requests for the kernel to perform tasks for the user
	- ```strace```: lets you view the details of the syscall you make 
- kernel modules
	- you can add features to your kernel with kernel modules
		- for example modules can add support for new kinds of keyboards, new bluetooth devices, etc.
		

### INIT
- 