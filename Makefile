ping:
	ansible all -i inventory.ini -u student -m ping

git_install:
	ansible-playbook git-i-playbook.yml -i inventory.ini -t install

git_uninstall:
	ansible-playbook git-u-playbook.yml -i inventory.ini

create_users:
	ansible-playbook git-i-playbook.yml -i inventory.ini -t user
