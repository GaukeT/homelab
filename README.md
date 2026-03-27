# 🏠 Homelab

> A self-hosted home infrastructure running on a Raspberry Pi 4B, serving DNS, monitoring, smart meter data, and various web services.

---

## 🖥️ Hardware

| Component | Details |
|-----------|---------|
| **Board** | Raspberry Pi 4B — 4 GB RAM |
| **Storage** | 1 TB HDD via USB |
| **Smart Meter** | P1 to USB cable |

TODO: add new hardware components (e.g. Intel NUC, network switch)

---

## ⚙️ System Services

| Service | Description |
|---------|-------------|
| **Cockpit** | Web-based system administration |

TODO: add new services on Proxmox (e.g. AdGuard Home, Unbound, vpn)

[//]: # (| **AdGuard Home** | Network-wide ad & tracker blocking | Proxmox LXC  |)
[//]: # (| **Unbound** | Recursive DNS resolver &#40;upstream for AdGuard&#41; | Proxmox LXC  |)
[//]: # (| **vpn** | WireGuard VPN server | Proxmox LXC  |)

---

## 🐳 Docker Services

| Service | Status | Description |
|---------|--------|-------------|
| **Traefik** | ✅ Running | Reverse proxy & TLS termination |
| **Uptime Kuma** | ✅ Running | Service uptime monitoring |
| **Grafana** | ✅ Running | Metrics visualisation |
| **Prometheus** | ✅ Running | Metrics collection |
| **dsmr5-exporter** | ✅ Running | P1 smart meter Prometheus exporter |
| **DuckDNS** | ✅ Running | Dynamic DNS updater |
| **Watchtower** | ✅ Running | Automatic container updates |

---

## 📊 Metrics & Observability

Metrics are scraped by **Prometheus** and visualised in **Grafana**.

| Exporter | Source |
|----------|--------|
| **Node Exporter** | Host system metrics (CPU, memory, disk, network) |
| **cAdvisor** | Per-container resource usage |
| **Watchtower** | Container update notifications |
| **dsmr5-exporter** | Dutch smart meter (electricity & gas usage) |
| **Traefik** | Request rates, latency, error rates |
| **Prometheus** | Srape targets, Total metrics, etc |
