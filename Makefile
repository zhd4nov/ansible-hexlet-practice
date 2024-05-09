# some tests
setup: install_pkg setup_git setup_nginx
	
create_users:
	ansible-playbook tasks/create-users.yml -i inventory.ini

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

ping:
	ansible all -i inventory.ini -u student -m ping

# some smart shit with custom roles
rollout_env:
	ansible-playbook tasks/git_from_role -i inventory.ini
