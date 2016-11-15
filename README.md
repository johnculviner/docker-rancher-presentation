# Intro to Docker and clustering with Rancher from scratch

# Description
- Aids in setup of Docker + Rancher on Digital Ocean with Terraform.
- Also contains [nodejs-echo-hostname](https://hub.docker.com/r/johnculviner/nodejs-echo-hostname/)
which helps illustrate how the rancher load balancer works

# Setup
- [Create](https://cloud.digitalocean.com/registrations/new) a DigitalOcean account
- Create an [API token](https://cloud.digitalocean.com/settings/api/tokens)
- set an environment variable for the token
```
export DIGITALOCEAN_TOKEN="ABDC123..."
```
- Install terraform
- To create your VMs, from `./terraform` run
```
terraform apply
```
- Update `./ansible/inventory.ini` for the IPs of your new VMs
- Install ansible
- From `./ansible` run
```
ansible-playbook install-docker-rancher
```

- Visit http://IP_OF_YOUR_DOCKER_0_BOX:8080/
  Infrastructure > Add Hosts
- Run
```
ansible all -u root -a "COMMAND_RANCHER_GIVES_YOU"
```

# Done!
You should now have a 4 node Rancher + Cattle + Docker cluster going that you can run containers on
