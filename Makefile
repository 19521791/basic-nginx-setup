test-connect:
	ansible -i inventories/staging/hosts.ini staging -m ping

sync-nginx:
	ansible-playbook -i inventories/staging/hosts.ini playbook.yml -v
