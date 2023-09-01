
gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)

kubectl apply -f ./test-webapp/test-webapp.yaml

kubectl apply -f ingress-gke.yaml