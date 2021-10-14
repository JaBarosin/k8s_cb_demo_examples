echo "Install ACME-Fit, Sock-Shop and Boutique apps on Kubernetes cluster"
kubectl create ns acme-fe
kubectl create ns acme-be
kubectl create -f acme/acme-fe -n acme-fe
kubectl create -f acme/acme-be -n acme-be
kubectl create ns boutique
kubectl create -f boutique/release/kubernetes-manifests.yaml -n boutique
kubectl create -f sock-shop/deploy/kubernetes/complete-demo.yaml -n sock-shop