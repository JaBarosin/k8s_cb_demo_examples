echo reload configmap for Olivetin
kubectl delete -f deploy/k8s_configmap.yml -n olivetin
kubectl create -f deploy/k8s_configmap.yml -n olivetin
kubectl delete pod --all -n olivetin
kubectl get pod -n olivetin