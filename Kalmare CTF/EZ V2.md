
### links
- https://http3.caddy.chal-kalmarc.tf/
	- ssl protocol error
- https://tls13.caddy.chal-kalmarc.tf/
	- tls info
- tells you if browser is supported
	- https://flag.caddy.chal-kalmarc.tf
	- runs on http 1.1



### vectors
- Flag is located at `GET /$(head -c 18 /dev/urandom | base64)` go fetch it.



### info
- {"tls_version":"tls1.3","alpn":"h2","sni":"tls13.caddy.chal-kalmarc.tf","cipher_suite":"TLS_AES_128_GCM_SHA256"}
- location of flag
	- flag is located in a file with name generated from urandom in root directory
## versions and software
- http 1.1
- tls 1.3 (current)
-  OpenSSL/3.0.10 (within 2 years)



cat /app/static/{input}