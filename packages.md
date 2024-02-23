### commands
- apt/yum: high level package manager that also installs dependencies
- dpkg/rpm: lower level package manager that installs just specified package
	- used by apt/yum
- make: used to build program binaries from sourcecode
	- note uninstalling after using make may not remove all associated files
	- instead use checkinstall, it's cleaner
- checkinstall
	- makes a deb file which then can be installed using apt

### sources.list
- sources.list contains valid repositories for apt to retrieve programs from
- you can add non-default repositories by adding sources to sources.list or sources.list.d
- sources.list and sources.list.d are both read as a single source of repos
	- they are just two files for organizational purposes
- you can try to add github repos to source through this method
	- you need to package your program as a .deb file first
https://github.com/rpatterson/github-apt-repos