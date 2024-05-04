setup:
	ansible-playbook playbook.yml -i inventory.ini

update_nginx:
	ansible-playbook playbook.yml -i inventory.ini -t update_config

ping:
	ansible all -i inventory.ini -u student -m ping

install:
	ansible-playbook playbook.yml -i inventory.ini -t install

