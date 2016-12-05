# MYSQL

### Preqs

* Create an inventory file.
  1. Fill in the IP address of dbserver.
  2. Specifiy path to your ssh key.
  3. Fill in your root db password. Alternatively, you can use [a vault](http://docs.ansible.com/ansible/playbooks_vault.html) to securely store the passwords.  
  Example here:
```
[dbservers]
X.X.X.X ansible_ssh_private_key_file=/home/vagrant/keys/id_rsa ansible_user=root
[dbservers:vars]
root_db_password="****"
```
* Set user name and password in .my.cnf. You can use example in templates/root/.my.cnf-example 

### Running playbook.

The [following playbook](mysql.yml) will install necessary packages for mysql server and secure the db for the root user.

```
ansible-playbook -i inventory mysql.yml
```

[This playbook](mysql-tables.yml) will create a new database and create tables as defined by this [sql file](templates/example-schema.sql). It is also possible to restore a full db dump compressed as gzip/bzip2. 

```
ansible-playbook -i inventory mysql-tables.yml 
```