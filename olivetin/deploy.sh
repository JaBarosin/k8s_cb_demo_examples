kubectl create ns netdemo
kubectl create -f deploy/. -n netdemo
kubectl create -f k8s_service.yaml -n netdemo