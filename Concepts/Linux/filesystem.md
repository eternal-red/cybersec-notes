#### filesystem types
- ext4 - This is the most current version of the native Linux filesystems. It is compatible with the older ext2 and ext3 versions. It supports disk volumes up to 1 exabyte and file sizes up to 16 terabytes and much more. It is the standard choice for Linux filesystems.
- Btrfs - "Better or Butter FS" it is a new filesystem for Linux that comes with snapshots, incremental backups, performance increase and much more. It is widely available, but not quite stable and compatible yet.
- XFS - High performance journaling file system, great for a system with large files such as a media server.
- NTFS and FAT - Windows filesystems
- HFS+ - Macintosh filesystem
#### journaling
- before you perform a file copy or transfer, the tasks that need to be performed will be logged
	- when tasks are completed, they are checked off
	- when device is started up again, log is checked thus 
		- shortens filesystem check time and speeds up boot time

#### partition table types
_MBR_
- Traditional partition table, was used as the standard
- Can have primary, extended, and logical partitions
- MBR has a limit of four primary partitions
- Additional partitions can be made by making a primary partition into an extended partition (there can only be one extended partition on a disk). Then inside the extended partition you add logical partitions. The logical partitions are used just like any other partition. Silly I know.
- Supports disks up to 2 terabytes

_GPT_
- GUID Partition Table (GPT) is becoming the new standard for disk partitioning
- Has only one type of partition and you can make many of them
- Each partition has a globally unique ID (GUID)
- Used mostly in conjunction with UEFI based booting (we'll get into details in another course)

#### Parts of a Disk Partition
- Boot block - This is located in the first few sectors of the filesystem, and it's not really used the by the filesystem. Rather, it contains information used to boot the operating system. Only one boot block is needed by the operating system. If you have multiple partitions, they will have boot blocks, but many of them are unused.
- Super block - This is a single block that comes after the boot block, and it contains information about the filesystem, such as the size of the inode table, size of the logical blocks and the size of the filesystem.
- Inode table - Think of this as the database that manages our files (we have a whole lesson on inodes, so don't worry). Each file or directory has a unique entry in the inode table and it has various information about the file.
- Data blocks - This is the actual data for the files and directories.

#### commands
- ```df -T```: lists all filesystems on your machine
- ```parted -l```: lets you view and manipulate partitions
	- resize with resizepart command
- mkpart
	- makes new partitions
	- part of parted cmd
	- does not make the filesystem for these partitions
- mkfs
	- makes filesystems for existing partitions
- blkid
	- lists the partition directories of all partitions on all devices
- mount: lets you interact with devices
	- you have to mount multiple partitions separately
	- only first partition is mounted by default
- umount: you need to be outside of the mounted directory to detach the device
- fsck: fixes corrupted devices


#### /etc/fstab
- devices listed in this file will automatically be mounted on startup
```
pete@icebox:~$ cat /etc/fstab
UUID=78d203a0-7c18-49bd-9e07-54f44cdb5726 /home    xfs     relatime    0       2
UUID=22c3d34b-467e-467c-b44d-f03803c2c526 none     swap    sw          0       0
```
- UUID - Device identifier
- Mount point - Directory the filesystem is mounted to
- Filesystem type
- Options - other mount options, see manpage for more details
- Dump - used by the dump utility to decide when to make a backup, you should just default to 0
- Pass - Used by fsck to decide what order filesystems should be checked, if the value is 0, it will not be checked

#### swap
- swap is what we used to allocate virtual memory to our system. If you are low on memory, the system uses this partition to "swap" pieces of memory of idle processes to the disk
- ```mkswap/swapon```: used to allocate a swap partition


#### inodes
- An inode (index node) is an entry in this table and there is one for every file.
- there is a limited amount of inode space and thus a limited amount of files that can be created
- inodes are used to locate files
	- data on your disk is not always stored sequentially, inodes are pointers that function like a linked list connecting all your data together

#### links
- equivalent to Windows shortcuts
- you can have multiple files with the same filename on a single filesystem
- ```ln```: makes links between files
	- symlinks:
		- can be used to link files across filesystems
		- even if multiple files have the same name, only a single one is linked
	- hardlinks
		- A hardlink just creates another file with a link to the same inode. So if I modified the contents of myfile2 or myhardlink, the change would be seen on both, but if I deleted myfile2, the file would still be accessible through myhardlink


### filesharing
- commands
	- scp: copies files from one device to another
	- rsync: copies files over but only new data
		- can determine what data you already have with checksums
	- python3 -m http.server: sets up port for local network sharing
		- can't share over internet because of routing tables
	- NFS: network file share that functions off a server
	- SMBClient: another network file sharing system