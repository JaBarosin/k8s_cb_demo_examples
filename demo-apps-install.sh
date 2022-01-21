echo "Install ACME-Fit, Sock-Shop,Boutique and log4j sample apps on your Kubernetes cluster"
kubectl create ns acme-fe
kubectl create ns acme-be
kubectl create -f acme-fe-be-split/acme-fe -n acme-fe
kubectl create -f acme-fe-be-split/acme-be -n acme-be
kubectl create ns boutique
kubectl create -f boutique/release/kubernetes-manifests.yaml -n boutique
kubectl create ns sock-shop
kubectl create -f sock-shop/deploy/kubernetes/complete-demo.yaml -n sock-shop
kubectl create -f log4j/log4j-vauln.yaml