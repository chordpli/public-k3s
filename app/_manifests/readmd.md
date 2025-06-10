1. traefik-config.yaml 수정

```
sudo nano /var/lib/rancher/k3s/server/manifests/traefik-config.yaml
```

2. https-redirect-middleware.yaml 수정 (또는 각 service의 overlays에 생성하여 맞춤 middleware로 설정해도 됨.)

```
sudo nano /var/lib/rancher/k3s/server/manifests/https-redirect-middleware.yaml
```

3. K3s 서버 재시작

```
sudo systemctl restart k3s.service
```

4. 파드 로그 확인

```
TRAEFIK_POD_NAME_NEW=$(kubectl get pods -n kube-system -l app.kubernetes.io/name=traefik -o jsonpath='{.items[0].metadata.name}')
echo "New Traefik pod name: $TRAEFIK_POD_NAME_NEW"

kubectl logs -n kube-system $TRAEFIK_POD_NAME_NEW
```
