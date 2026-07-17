# Day 07 – Linux Networking Fundamentals

## Network Information

`hostname`
- Display the system hostname.

`hostname -I`
- Display the system's IP address.

`ip link`
- Show network interfaces.

`ip addr`
- Display detailed network interface information.

`ip route`
- Show the routing table and default gateway.

---

## Connectivity

`ping <host>`
- Test network connectivity.

`ping -c <count> <host>`
- Send a specific number of ping requests.

Examples:

`ping -c 4 127.0.0.1`

`ping -c 4 8.8.8.8`

`ping -c 4 google.com`

---

## DNS

`nslookup <domain>`
- Resolve a domain name to an IP address.

`dig <domain>`
- Display detailed DNS information.

---

## Downloading Files

`wget <url>`
- Download a file from the internet.

`curl <url>`
- Retrieve data from a URL.

`curl -O <url>`
- Download a file while keeping its original filename.

---

## Network Connections

`ss -tuln`
- Show listening TCP/UDP ports.

`ss -tln`
- Show listening TCP ports only.

---

## Useful Commands

`whoami`
- Display the current user.

`date`
- Display the current date and time.

---

## Text Processing

`tail -n +2`
- Skip the first line (commonly used to remove headers).

`wc -l`
- Count the number of lines.

Example:

`ss -tln | tail -n +2 | wc -l`
- Count listening TCP ports without counting the header.

---

## Concepts Learned

- IP Address
- Public vs Private IP
- Loopback Address (`127.0.0.1`)
- Network Interface
- Default Gateway
- DNS (Domain Name System)
- TCP & UDP Ports
- Basic Network Troubleshooting
