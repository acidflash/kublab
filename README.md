# Kubernetes Klusterkonfiguration

Detta dokument innehåller en översikt av alla Kubernetes-resurser definierade i YAML-filer inom detta projekt.

## Innehållsförteckning
- [default / ConfigMap: tunnel-config](#default--ConfigMap-tunnel-config)
- [argocd / Secret: tunnel-secrets](#argocd--Secret-tunnel-secrets)
- [argocd / CronJob: update-tunnel-config](#argocd--CronJob-update-tunnel-config)
- [argocd / Application: update-tunnel-config](#argocd--Application-update-tunnel-config)
- [elk / Deployment: kibana](#elk--Deployment-kibana)
- [elk / Service: kibana](#elk--Service-kibana)
- [elk / Deployment: logstash](#elk--Deployment-logstash)
- [elk / Service: logstash](#elk--Service-logstash)
- [elk / ConfigMap: logstash-config](#elk--ConfigMap-logstash-config)
- [default / Namespace: elk](#default--Namespace-elk)
- [elk / StatefulSet: elasticsearch](#elk--StatefulSet-elasticsearch)
- [elk / Service: elasticsearch](#elk--Service-elasticsearch)
- [default / null: null](#default--null-null)
- [default / ConfigMap: argocd-notifications-cm](#default--ConfigMap-argocd-notifications-cm)
- [default / Secret: argocd-notifications-secret](#default--Secret-argocd-notifications-secret)
- [nginx-external / Deployment: nginx-deployment](#nginx-external--Deployment-nginx-deployment)
- [nginx-external / PersistentVolumeClaim: nginx-pvc](#nginx-external--PersistentVolumeClaim-nginx-pvc)
- [nginx-external / PersistentVolume: nginx-pv](#nginx-external--PersistentVolume-nginx-pv)
- [nginx-external / ConfigMap: nginx-config](#nginx-external--ConfigMap-nginx-config)
- [nginx-external / Service: nginx-service](#nginx-external--Service-nginx-service)
- [default / Namespace: nginx-external](#default--Namespace-nginx-external)
- [argocd / Application: nginx-external-app](#argocd--Application-nginx-external-app)

## Resursdetaljer

### default / ConfigMap: tunnel-config

- **Fil:** `./cloudflare/tunnel-config.yaml`
- **Namespace:** default
- **Typ:** ConfigMap
- **Namn:** tunnel-config


### argocd / Secret: tunnel-secrets

- **Fil:** `./cloudflare/tunnel-secrets.yaml`
- **Namespace:** argocd
- **Typ:** Secret
- **Namn:** tunnel-secrets


### argocd / CronJob: update-tunnel-config

- **Fil:** `./cloudflare/update-tunnel-config.yaml`
- **Namespace:** argocd
- **Typ:** CronJob
- **Namn:** update-tunnel-config


### argocd / Application: update-tunnel-config

- **Fil:** `./cloudflare/application.yaml`
- **Namespace:** argocd
- **Typ:** Application
- **Namn:** update-tunnel-config


### elk / Deployment: kibana

- **Fil:** `./elk/base/kibana/deployment.yaml`
- **Namespace:** elk
- **Typ:** Deployment
- **Namn:** kibana


### elk / Service: kibana

- **Fil:** `./elk/base/kibana/service.yaml`
- **Namespace:** elk
- **Typ:** Service
- **Namn:** kibana


### elk / Deployment: logstash

- **Fil:** `./elk/base/logstash/deployment.yaml`
- **Namespace:** elk
- **Typ:** Deployment
- **Namn:** logstash


### elk / Service: logstash

- **Fil:** `./elk/base/logstash/service.yaml`
- **Namespace:** elk
- **Typ:** Service
- **Namn:** logstash


### elk / ConfigMap: logstash-config

- **Fil:** `./elk/base/logstash/configmap.yaml`
- **Namespace:** elk
- **Typ:** ConfigMap
- **Namn:** logstash-config


### default / Namespace: elk

- **Fil:** `./elk/base/namespace.yaml`
- **Namespace:** default
- **Typ:** Namespace
- **Namn:** elk


### elk / StatefulSet: elasticsearch

- **Fil:** `./elk/base/elasticsearch/deployment.yaml`
- **Namespace:** elk
- **Typ:** StatefulSet
- **Namn:** elasticsearch


### elk / Service: elasticsearch

- **Fil:** `./elk/base/elasticsearch/service.yaml`
- **Namespace:** elk
- **Typ:** Service
- **Namn:** elasticsearch


### default / null: null

- **Fil:** `./elk/base/elasticsearch/pvc.yaml`
- **Namespace:** default
- **Typ:** null
- **Namn:** null


### default / ConfigMap: argocd-notifications-cm

- **Fil:** `./discordalert/argocd-notifications-cm.yaml`
- **Namespace:** default
- **Typ:** ConfigMap
- **Namn:** argocd-notifications-cm


### default / Secret: argocd-notifications-secret

- **Fil:** `./discordalert/argocd-notifications-secret.yaml`
- **Namespace:** default
- **Typ:** Secret
- **Namn:** argocd-notifications-secret


### nginx-external / Deployment: nginx-deployment

- **Fil:** `./nginx-project/deployment.yaml`
- **Namespace:** nginx-external
- **Typ:** Deployment
- **Namn:** nginx-deployment


### nginx-external / PersistentVolumeClaim: nginx-pvc

- **Fil:** `./nginx-project/persistent-volume-claim.yaml`
- **Namespace:** nginx-external
- **Typ:** PersistentVolumeClaim
- **Namn:** nginx-pvc


### nginx-external / PersistentVolume: nginx-pv

- **Fil:** `./nginx-project/persistent-volume.yaml`
- **Namespace:** nginx-external
- **Typ:** PersistentVolume
- **Namn:** nginx-pv


### nginx-external / ConfigMap: nginx-config

- **Fil:** `./nginx-project/nginx-config.yaml`
- **Namespace:** nginx-external
- **Typ:** ConfigMap
- **Namn:** nginx-config


### nginx-external / Service: nginx-service

- **Fil:** `./nginx-project/service.yaml`
- **Namespace:** nginx-external
- **Typ:** Service
- **Namn:** nginx-service


### default / Namespace: nginx-external

- **Fil:** `./nginx-project/namespace.yaml`
- **Namespace:** default
- **Typ:** Namespace
- **Namn:** nginx-external


### argocd / Application: nginx-external-app

- **Fil:** `./nginx-project/application.yaml`
- **Namespace:** argocd
- **Typ:** Application
- **Namn:** nginx-external-app

