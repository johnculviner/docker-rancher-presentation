# Description
- Aids in setup of Docker + Rancher on Digital Ocean with Terraform.
- Also contains nodejs-echo-hostname (https://hub.docker.com/r/johnculviner/nodejs-echo-hostname/)
which helps illustrate how the rancher load balancer works

# Setup
- Create a DigitalOcean account
- Create an API token here https://cloud.digitalocean.com/settings/api/tokens
- set an environment variable for the to export DIGITALOCEAN_TOKEN="ABDC123..."
- Install terraform
- Run ```terraform apply``` from ./terraform to create your VMs
- Update ./ansible/inventory.ini for the IPs of your new VMs
- Install ansible
- Run ```ansible-playbook install-docker-rancher``` from ./ansible
- Visit http://IP_OF_YOUR_DOCKER_0_BOX:8080/ Infrastructure>Add Hosts
- Run ```ansible all -u root -a "COMMAND_RANCHER_GIVES_YOU"```
 
#Done!
You should now have a 4 node Rancher + Cattle + Docker cluster going that you can run containers on 

