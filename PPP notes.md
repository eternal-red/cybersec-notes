- nmap
	- do default as T4,T5 doesn't really alert IDS/IPS
	- avoid nmap defaults
	- firewall evasion is not a big thing

- if you put variable in quotes, you can't escape it
`if ! cat "$path" > /dev/null; then`
- if there are no quotes it may be injectable
`echo -en $1`
- attempt command inject through web requests
`curl --path-as-is` for curl to not automatically collapse `../`





