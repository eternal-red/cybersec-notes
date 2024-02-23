#### device types
- c - character
	- These devices transfer data, but one character at a time. You'll see a lot of pseudo devices (/dev/null) as character devices, these devices aren't really physically connected to the machine though.
- b - block
	- These devices transfer data, but in large fixed-sized blocks. You'll most commonly see devices that utilize data blocks as block devices, such as harddrives, filesystems, etc.
- p - pipe
	- Named pipes allow two or more processes to communicate with each other, these are similar to character devices, but instead of having output sent to a device, it's sent to another process.
- s - socket
	- Socket devices facilitate communication between processes, similar to pipe devices but they can communicate with many processes at once.
#### device drivers
- device drivers control devices and can control multiple
- the major number refers to the device driver
- the minor number is the unique identifier of the device on that driver
#### device nodes
- ```mknod```: command used to manually create a device driver
-  the /sys directory contains detailed information on all devices
	- ```udevadm info --query=all --name=/dev/sda```: command to find info on devices
	- /sys directory is hard to navigate
- list devices and information with some downloadable cmds
	- ```lsusb, lspci, lsscsi```

#### dd
- useful tool for copying and converting data