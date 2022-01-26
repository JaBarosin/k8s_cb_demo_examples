echo reload config map
kubectl delete -f k8s_configmap.yml -n olivetin
kubectl create -f k8s_configmap.yml -n olivetin
kubectl delete pod --all -n olivetin
kubectl get pod -n olivetin