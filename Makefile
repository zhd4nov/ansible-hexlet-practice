setup:
	ansible-playbook tasks/playbook.yml -i inventory.ini

create_users:
	ansible-playbook tasks/create_users.yml -i inventory.ini

update_nginx:
	ansible-playbook tasks/playbook.yml -i inventory.ini -t update_config

ping:
	ansible all -i inventory.ini -u student -m ping

install:
	ansible-playbook tasks/playbook.yml -i inventory.ini -t install

