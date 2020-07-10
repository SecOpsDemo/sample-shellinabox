# Shell in a Box


## deprecated
```bash
kubectl create ns demo
kubectl run shellinabox --image=zyseu/my-shellinabox-ubuntu:v1  -n demo
kubectl create -f service.yaml
kubectl create -f ingress.yaml
```