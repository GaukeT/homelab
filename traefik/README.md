# traefik

The Traefik acts as a reverse proxy for all services. Also provides a wildcard let's encrypt certificate on subdomain `*.devnord.duckdns.org` via a DNS-01 Challenge. 
Internally `*.devnord.duckdns.org` is rewritten by the DNS, so that I don't have to expose the service publicly.

.env file
```env
DUCKDNS_TOKEN=<YOUR_DUCKDNS_API_TOKEN>
ACME_EMAIL=<YOUR_DUCKDNS_REGISTRED_EMAIL>
```