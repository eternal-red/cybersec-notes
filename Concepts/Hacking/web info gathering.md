### potential vector
- domains and subdomains
- ip ranges
- infrastructure in full stack
- vhosts


### passive gathering
- pullup domain register info
	- tools: `whois`
- DNS lookup
	- provides DNS records, there are many types (use flags for tools)
	- tools: `nslookup, dig`
		- dig
			- The question section displays the domain, and the type of record queried
			- Answer Section: The answer section contains the information retrieved from the DNS server, such as IP addresses or other DNS records
			- flags
```
nslookup [domain] [specific name server]
-type: resource to get
-query: type of query to make
```

#### zones
- all the dns records for a domain and its associated subdomains my be broken up into mutliple zones. Thus, you have to zone transfer all zones in order to get all the subdomains of a website.
	- you can discover other zones by trying to do zone transfers on subdomains in one zone
- the fqdn is the full domain name that corresponds with an ip
- how to lookup specific records: (looking up A records)
	- `dig @nameserver_ip A axfr domain.com |grep -e "IN\s*A"`



- subdomain information
	- Online lookup
		- tools: virustotal
	- Automated lookup
		- `theharvester`
	- Certificates
		- discover subdomains by looking at the records of the domain name
		- [https://censys.io](https://censys.io/)  [https://crt.sh](https://crt.sh/)
		- cmd to make output more readable/grepable
```
curl -s "https://crt.sh/?q=${TARGET}&output=json" | jq -r '.[] | "\(.name_value)\n\(.common_name)"' | sort -u > "${TARGET}_crt.sh.txt"
```
- 
	- site reports
		- https://sitereport.netcraft.com
- wayback
	- waybackmachine
	- waybackurl repo
### active gathering
- infrastructure identification
	- overall
		- http headers
		- whatweb
		- wappalyzer 
	- identify WAF (web application firewall)
		- wafW00f
	- aquatone
- subdomain enumeration
	- zonetransfers
		- request all the data from one dns
		- use `query: axfr`
	- 