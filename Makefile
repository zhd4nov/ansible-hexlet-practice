setup: install_pkg setup_git setup_nginx
	
create_users:
	ansible-playbook tasks/create_users.yml -i inventory.ini

ping:
	ansible all -i inventory.ini -u student -m ping

install_pkg:
	ansible-playbook tasks/pkg-install.yml -i inventory.ini

setup_git:
	ansible-playbook tasks/setup-git.yml -i inventory.ini

setup_nginx:
	ansible-playbook tasks/setup-nginx.yml -i inventory.ini

update_nginx:
	ansible-playbook tasks/setup-nginx.yml -i inventory.ini -t update_config

update_html:
	ansible-playbook tasks/setup-nginx.yml -i inventory.ini -t page_update
