# Connect to EKS
aws eks --region $(terraform -chdir=../3-eks output -raw cluster_region) update-kubeconfig --name $(terraform -chdir=../3-eks output -raw cluster_name)

# Deploy Consul datacenter 
# Add the HashiCorp Helm Chart repository
helm repo add hashicorp https://helm.releases.hashicorp.com
# Install Consul using Helm Chart
helm install --values values.yaml consul hashicorp/consul --create-namespace --namespace consul --version "1.2.0"

# Retrieve the ACL bootstrap token from the respective Kubernetes secret and set it as an environment variable
export CONSUL_HTTP_TOKEN=$(kubectl get --namespace consul secrets/consul-bootstrap-acl-token --template={{.data.token}} | base64 -d)

# Set the Consul destination address. By default, Consul runs on port 8500 for http and 8501 for https
export CONSUL_HTTP_ADDR=https://$(kubectl get services/consul-ui --namespace consul -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')

# Remove SSL verification checks to simplify communication to your Consul datacenter.
export CONSUL_HTTP_SSL_VERIFY=false
