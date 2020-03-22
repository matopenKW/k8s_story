## 
+ minikube start --vm-driver=none
+ kubectl create deployment --image nginx my-nginx
+ kubectl get pods
+ kubectl scale deployment --replicas 2 my-nginx
+ kubectl get pods
+ kubectl expose deployment my-nginx --port=80 --type=LoadBalancer
+ kubectl get service
+ sudo lsof -i -P | grep "LISTEN"