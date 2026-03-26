# Initial setup

## K3S Install

follow https://docs.k3s.io/quick-start

On the k3s control plane, simlink the `kubeconfig` to home directory
```sh
ln -s /etc/rancher/k3s/k3s.yaml ~/.kube.config
```

## Treafik

## Secrets

The following secrets must be created manually before applying the cluster config:

### DuckDNS credentials (used by Traefik for cert resolver)
```sh
kubectl create secret generic duckdns-credentials \
  --from-literal=token=DUCKDNS_TOKEN \
  --from-literal=email=email@email.com \
  -n kube-system
  
kubectl apply -n kube-system -f k3s/cluster-config/traefik/helm-config.yaml
```
- https://mathieuduchesneau.ca/en/blog/self-hosted/orchestration/setup-bundled-k3s-traefik-for-dns-01


## argocd

- https://argo-cd.readthedocs.io/en/stable/getting_started/
- https://argo-cd.readthedocs.io/en/stable/operator-manual/ingress/#traefik-v30

```sh
kubectl create namespace argocd

# v3.3.4
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/v3.3.4/manifests/install.yaml
```

suggested directory structure:
```txt
homelab/
  proxmox/
    k3s/
      apps/
        homepage/
        monitoring/
        ...
      namespaces/
      cluster-config/
```
Explanation:
- k3s/ — All Kubernetes manifests and GitOps configuration.
  - apps/ — Manifests for workloads, organized by app/service.
  - namespaces/ — Namespace definitions
  - cluster-config/ — Cluster-wide resources
