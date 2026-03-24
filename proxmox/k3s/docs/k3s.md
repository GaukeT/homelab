
# K3S setup

## Hardware
| Component | Details |
|-----------|---------|
| Compute | 2 × Intel NUC D54250WYK, 2 CPU Cores / 4 Threads, 16 GB RAM, 100 GB SSD (local-lvm) |

### Configuration
| Component | Host | OS | vCPU | RAM | DISK |
|-----------|---------|-----------|---------|---------|---------|
| k3s-control | NUC1 (Proxmox VM) | Debian 13 | 4 | 4GB | 20GB |
| k3s-agent1 |  NUC1 (Proxmox VM) | Debian 13 | 4 | 4GB | 40GB |
| k3s-agent2 |  NUC2 (Proxmox VM) | Debian 13 | 4 | 8GB | 60GB |

### Workload (planning)
| Workload | K3S Agent |
|--|--|
| treafik | agent1, agent2 |
| duckdns (DDNS) | agent1 |
| homepage | agent1 |
| prometheus | agent1 |
| grafana | agent1|
| booklore | agent2 |

**TBD**: argocd, renovate, loki, authentik, Tekton

### Namespace

**TBD**: determine what namespaces to create.

## Requirements / Considerations

- As much as possible documented in Git repository.
- The workloads are non critical
- If an Agent OR Host is down, the workloads on the other agent must still be accessible.
- Services are only accessible on the internal LAN
- Services must be accessible over HTTPS (with wildcard certificate on `*.devnord.duckdns.org`) with DNS-01 challenge
- At first the K3S agents only have local storage (non shared)
- At first, will use K3S built-in secrets, later migrate to a deployed secrets manager (e.g. HashiCorp Vault).
- k3s-agent1 task -> monitoring / tooling
- k3s-agent2 task -> shared services for whole family to use

**TBD**: shared storage expandability to NAS (future plan)

## References

- [K3S requirements](https://docs.k3s.io/installation/requirements)
- [Intel NUC D54250WYK](https://www.intel.com/content/www/us/en/products/sku/76977/intel-nuc-kit-d54250wyk/specifications.html)