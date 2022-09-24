# DNS Testing

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [Troubleshooting](#troubleshooting)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

## Troubleshooting

To troubleshoot DNS failures using Linux-type operating systems, use the dig command. dig performs a lookup against the client DNS server that is configured in the /etc/resolv.conf file of your host.
```bash
$ dig www.amazon.com

 <<>> DiG 9.8.2rc1-RedHat-9.8.2-0.37.rc1.49.amzn1 <<>> www.amazon.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 13150
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0
;; QUESTION SECTION:
;www.amazon.com.    IN    A
;; ANSWER SECTION:
www.amazon.com.        41    IN    A    54.239.17.6
;; Query time: 1 msec
;; SERVER: 10.108.0.2#53(10.108.0.2)
;; WHEN: Fri Oct 21 21:43:11 2016
;; MSG SIZE rcvd: 48
```

In the preceding example, the answer section shows that 54.239.17.6 is the IP address of the HTTP server for www.amazon.com.
If you add the +trace variable, dig can also perform a recursive lookup of a DNS record:

```bash
$ dig +trace www.amazon.com
; <<>> DiG 9.8.2rc1-RedHat-9.8.2-0.37.rc1.49.amzn1 <<>> +trace www.amazon.com
;; global options: +cmd
.        518400    IN    NS    J.ROOT-SERVERS.NET.
.        518400    IN    NS    K.ROOT-SERVERS.NET.
.        518400    IN    NS    L.ROOT-SERVERS.NET.
…
;; Received 508 bytes from 10.108.0.2#53(10.108.0.2) in 31 ms
com.        172800    IN    NS    a.gtld-servers.net.
com.        172800    IN    NS    b.gtld-servers.net.
com.        172800    IN    NS    c.gtld-servers.net.
…
;; Received 492 bytes from 193.0.14.129#53(193.0.14.129) in 93 ms
amazon.com.        172800    IN    NS    pdns1.ultradns.net.
amazon.com.        172800    IN    NS    pdns6.ultradns.co.uk.
…
;; Received 289 bytes from 192.33.14.30#53(192.33.14.30) in 201 ms
www.amazon.com.    900    IN    NS    ns-1019.awsdns-63.net.
www.amazon.com.    900    IN    NS    ns-1568.awsdns-04.co.uk.
www.amazon.com.    900    IN    NS    ns-277.awsdns-34.com.
…
;; Received 170 bytes from 204.74.108.1#53(204.74.108.1) in 87 ms
www.amazon.com.    60     IN    A    54.239.26.128
www.amazon.com.    1800   IN    NS   ns-1019.awsdns-63.net.
www.amazon.com.    1800   IN    NS   ns-1178.awsdns-19.org.
…
;; Received 186 bytes from 205.251.195.251#53(205.251.195.251) in 7 ms
```

You can also perform a query that returns only the name servers:

```bash
$ dig -t NS www.amazon.com
; <<>> DiG 9.8.2rc1-RedHat-9.8.2-0.37.rc1.49.amzn1 <<>> -t NS www.amazon.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 48631
;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 0, ADDITIONAL: 0
;; QUESTION SECTION:
;www.amazon.com.        IN    NS
;; ANSWER SECTION:
www.amazon.com.        490    IN    NS    ns-1019.awsdns-63.net.
www.amazon.com.        490    IN    NS    ns-1178.awsdns-19.org.
www.amazon.com.        490    IN    NS    ns-1568.awsdns-04.co.uk.
www.amazon.com.        490    IN    NS    ns-277.awsdns-34.com.
;; Query time: 0 msec
;; SERVER: 10.108.0.2#53(10.108.0.2)
;; WHEN: Fri Oct 21 21:48:20 2016
;; MSG SIZE rcvd: 170
```

The following is the output for a query to www.amazon.com to one of its authoritative name servers (ns-1019.awsdns-63.net); it responds telling us that www.amazon.com is available on 54.239.25.192:
```bash
$ dig www.amazon.com @ns-1019.awsdns-63.net.
; <<>> DiG 9.8.2rc1-RedHat-9.8.2-0.37.rc1.49.amzn1 <<>> www.amazon.com @ns-1019.awsdns-63.net.
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 31712
;; flags: qr aa rd; QUERY: 1, ANSWER: 1, AUTHORITY: 4, ADDITIONAL: 0
;; WARNING: recursion requested but not available
;; QUESTION SECTION:
;www.amazon.com.    IN    A
;; ANSWER SECTION:
www.amazon.com.        60    IN    A    54.239.25.192
;; AUTHORITY SECTION:
www.amazon.com.        1800    IN    NS    ns-1019.awsdns-63.net.
www.amazon.com.        1800    IN    NS    ns-1178.awsdns-19.org.
www.amazon.com.        1800    IN    NS    ns-1568.awsdns-04.co.uk.
…
;; Query time: 7 msec
;; SERVER: 205.251.195.251#53(205.251.195.251)
;; WHEN: Fri Oct 21 21:50:00 2016
;; MSG SIZE rcvd: 186
```

On Windows-based operating systems, use the nslookup utility. nslookup returns the IP address associated with a host name, as in the following example:
```ps
C:\>nslookup www.amazon.com
Server:     ip-10-20-0-2.ec2.internal
Address:    10.20.0.2
Non-authoritative answer:
Name:       www.amazon.com
Address:    54.239.25.192
```

To determine the authoritative name servers for a host name using the nslookup utility, use the -type=NS flag:
```ps
C:\>nslookup -type=NS www.amazon.com
Server:     ip-10-20-0-2.ec2.internal
Address:    10.20.0.2
Non-authoritative answer:
www.amazon.com    nameserver = ns-277.awsdns-34.com
www.amazon.com    nameserver = ns-1019.awsdns-63.net
www.amazon.com    nameserver = ns-1178.awsdns-19.org
```

To see if ns-277.awsdns-34.com for www.amazon.com responds correctly to a request for www.amazon.com, use the following syntax
```ps
:\>nslookup www.amazon.com ns-277.awsdns-34.com
Server:     UnKnown
Address:    205.251.193.21
Name:       www.amazon.com
Address:    54.239.25.200
```
