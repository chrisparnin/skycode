# DigitalOcean

See the following for a [full guide](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2-with-ansible-2-0-on-ubuntu-14-04).

### Preqs

* Ansible installed on your system, which you can set up by following this [guide](https://github.com/CSC-510/Course/blob/master/Materials/CM.md#configuration-with-ansible).

* A read and write [Personal Access Token](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2#how-to-generate-a-personal-access-token) for the API. 

* Create `do.ini` with your Personal Access Token filled in.
```ini
[default]
do_token=6e.....
```