setup:
	ansible-playbook playbooks/playbook.yml -i inventory.ini

create_users:
	ansible-playbook playbooks/user_playbook.yml -i inventory.ini

update_nginx:
	ansible-playbook playbooks/playbook.yml -i inventory.ini -t update_config

ping:
	ansible all -i inventory.ini -u student -m ping

install:
	ansible-playbook playbooks/playbook.yml -i inventory.ini -t install

