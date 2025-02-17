lb:
	ansible-playbook -i inventories/hosts.ini playbooks/load-balancing.yml
artifact:
	ansible-playbook -i inventories/hosts.ini playbooks/artifact-server.yml
vault:
	ansible-playbook -i inventories/hosts.ini playbooks/vault-server.yml
portainer:
	ansible-playbook -i inventories/hosts.ini playbooks/portainer-server.yml
sonar:
	ansible-playbook -i inventories/hosts.ini playbooks/sonarqube-server.yml
fe:
	ansible-playbook -i inventories/hosts.ini playbooks/frontend-server.yml
be:
	ansible-playbook -i inventories/hosts.ini playbooks/backend-server.yml