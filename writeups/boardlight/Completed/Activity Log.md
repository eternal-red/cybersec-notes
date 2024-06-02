`- High-level tracking of everything you did during the assessment for possible event correlation.`
`- Include your tmux log: https://academy.hackthebox.com/module/162/section/1534`
`- At a minimum, we should be tracking when a payload was used, which host it was used on, what file path it was placed in on the target, and whether it was cleaned up or needs to be cleaned up by the client.`

## Takeaways

- subdomain enumeration
	- gobuster vhost is a method
	- ffuf can do this too, but you need to use `-H` flag and filter for response size `-fs`
- 