echo "Install ACME-Fit, Sock-Shop and Boutique apps on Kubernetes cluster"
kubectl create ns acme-fe
kubectl create ns acme-be
kubectl create ns acme-db
kubectl create -f acme-db-split/acme-fe -n acme-fe
kubectl create -f acme-db-split/acme-be -n acme-be
kubectl create -f acme-db-split/acme-db -n acme-db
kubectl create ns boutique
kubectl create -f boutique/release/kubernetes-manifests.yaml -n boutique
kubectl create ns sock-shop
kubectl create -f sock-shop/deploy/kubernetes/complete-demo.yaml -n sock-shop