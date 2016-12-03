# Skycode

Example ansible scripts for common tasks.

## Preqs

* Ansible installed on your system, which you can set up by following this [guide](https://github.com/CSC-510/Course/blob/master/Materials/CM.md#configuration-with-ansible).
* Install some python modules, in order to resolve [some issues with dopy](https://github.com/ansible/ansible-modules-core/issues/2509).

```bash
sudo apt-get update
# Basic dev deps
sudo apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-devsudo 
# Ansible and dopy
pip install -r requirements.txt
```

### Provisioning tasks

* [DigitalOcean](providers/do/README.md)
