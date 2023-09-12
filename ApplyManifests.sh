
gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)

kubectl apply -f ./test-webapp/test-webapp.yaml

kubectl apply -f ingress-gke.yaml

kubectl apply -f ./compute-manifests/tower.launcher.yaml

gcloud iam service-accounts keys create tower-compute \
    --iam-account=tower-compute@$(terraform output -raw project_id).iam.gserviceaccount.com 


#export TOWER_ACCESS_TOKEN=$(terraform output -raw TOWER_ACCESS_TOKEN)