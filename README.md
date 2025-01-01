    .
    ├── cloudflare
    │   ├── application.yaml
    │   ├── rensa.yaml.OFF
    │   ├── testpod.yaml.OFF
    │   ├── tunnel-config.yaml
    │   ├── tunnel-secrets.yaml
    │   └── update-tunnel-config.yaml
    ├── discordalert
    │   ├── argocd-notifications-cm.yaml
    │   └── argocd-notifications-secret.yaml
    ├── elk
    │   └── base
    │       ├── elasticsearch
    │       │   ├── deployment.yaml
    │       │   ├── pvc.yaml
    │       │   └── service.yaml
    │       ├── kibana
    │       │   ├── deployment.yaml
    │       │   └── service.yaml
    │       ├── logstash
    │       │   ├── configmap.yaml
    │       │   ├── deployment.yaml
    │       │   └── service.yaml
    │       └── namespace.yaml
    └── nginx-project
        ├── application.yaml
        ├── deployment.yaml
        ├── namespace.yaml
        ├── nginx-config.yaml
        ├── persistent-volume-claim.yaml
        ├── persistent-volume.yaml
        └── service.yaml
