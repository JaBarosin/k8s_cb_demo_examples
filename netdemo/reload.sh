echo reload configmap for NetDemo
kubectl delete -f deploy/k8s_configmap.yml -n netdemo
kubectl create -f deploy/k8s_configmap.yml -n netdemo
kubectl delete pod --all -n netdemo
kubectl get pod -n netdemo