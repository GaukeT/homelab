# 🏠 Homelab

> A self-hosted home infrastructure running on a Raspberry Pi 4B, serving DNS, monitoring, smart meter data, and various web services.

---

## 🖥️ Hardware

| Component | Details |
|-----------|---------|
| **Board** | Raspberry Pi 4B — 4 GB RAM |
| **Storage** | 1 TB HDD via USB |
| **Smart Meter** | P1 to USB cable |

---

## ⚙️ System Services

| Service | Description |
|---------|-------------|
| **AdGuard Home** | Network-wide ad & tracker blocking |
| **Unbound** | Recursive DNS resolver (upstream for AdGuard) |
| **Cockpit** | Web-based system administration |
| **pivpn** | WireGuard VPN server |

---

## 🐳 Docker Services

| Service | Status | Description |
|---------|--------|-------------|
| **Traefik** | ✅ Running | Reverse proxy & TLS termination |
| **Homepage** | ✅ Running | Self-hosted dashboard |
| **Uptime Kuma** | ✅ Running | Service uptime monitoring |
| **Grafana** | ✅ Running | Metrics visualisation |
| **Prometheus** | ✅ Running | Metrics collection |
| **dsmr5-exporter** | ✅ Running | P1 smart meter Prometheus exporter |
| **DuckDNS** | ✅ Running | Dynamic DNS updater |
| **Watchtower** | ✅ Running | Automatic container updates |
| **Booklore** | ⏹️ Stopped | Self-hosted book library |

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