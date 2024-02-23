### su 
- lets you switch users 
	- can switch to root
		- doesn't work on default macs, root has no pw
### /etc/passwd
root:x:0:0:root:/root:/bin/bash
```
1. Username
2. User's password - the password is not really stored in this file, it's usually stored in the /etc/shadow file. We'll discuss more in the next lesson about /etc/shadow, but for now, know that it contains encrypted user passwords. You can see many different symbols that are in this field, if you see an "x" that means the password is stored in the /etc/shadow file, a "*" means the user doesn't have login access and if there is a blank field that means the user doesn't have a password.
3. The user ID - as you can see root has the UID of 0
4. The group ID
5. GECOS field - This is used to generally leave comments about the user or account such as their real name or phone number, it is comma delimited.
6. User's home directory
7. User's shell - you'll probably see a lot of user's defaulting to bash for their shell
```
### /etc/shadow
root:MyEPTEa$6Nonsense:15000:0:99999:7:::
```
1. Username
2. Encrypted password
3. Date of last password changed - expressed as the number of days since Jan 1, 1970. If there is a 0 that means the user should change their password the next time they login
4. Minimum password age - Days that a user will have to wait before being able to change their password again
5. Maximum password age - Maximum number of days before a user has to change their password
6. Password warning period - Number of days before a password is going to expire
7. Password inactivity period - Number of days after a password has expired to allow login with their password
8. Account expiration date - date that user will not be able to login
9. Reserved field for future use
```
### /etc/group
root:\*:0:pete
```
1. Group name
2. Group password - there isn't a need to set a group password, using an elevated privilege like sudo is standard. A "*" will be put in place as the default value, no passwd. A "!" means that users can't login with password
3. Group ID (GID)
4. List of users - you can manually specify users you want in a specific group
```

### commands
useradd: creates new user accounts
groupadd: make new groups 
userdel: delete user account and related files and folders
passwd: change user passwd
chown: modify user ownership
chgrp:  modify group ownership
umask: edit the default permissions when making files
- overwritten by folder perms and kinda useless
suid:
- The Set User ID (SUID) allows a user to run a program as the owner of the program file rather than as themselves.


