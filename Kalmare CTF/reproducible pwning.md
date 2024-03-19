### notes
- session closes immediately after using linpeas
#### commands
- ping 
- nc
- not on system
	- sudo

### user info
- uid=1000(user) gid=995(user) groups=995(user)
- Hostname: nixos
- Writable folder: /dev/shm





## potential attack vectors

#### systemd
- user's  ran as root?
	- Proc 630 with ppid 1 is run by user user but the ppid user is root
	- user         630  0.0  0.5  19856 12036 ?        Ss   17:14   0:00 /nix/store/r2zjddbc25nkgdja3rc8qfx1w3v897dk-systemd-255.2/lib/systemd/systemd --user
  └─(Caps) 0x0000000800000000=cap_wake_alarm

	- Proc 639 with ppid 619 is run by user user but the ppid user is root
- systemd path
	- PATH=/nix/store/r2zjddbc25nkgdja3rc8qfx1w3v897dk-systemd-255.2/bin/  
- 