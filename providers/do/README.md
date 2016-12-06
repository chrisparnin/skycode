# DigitalOcean

See the following for a [full guide](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2-with-ansible-2-0-on-ubuntu-14-04).

### Preqs

* A ssh key. [See guide](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets) if you need to make new one.
* A read and write [Personal Access Token](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2#how-to-generate-a-personal-access-token) for the API. 
* Create `do.ini` with your Personal Access Token filled in.
```ini
[default]
do_token=6e.....
```

### Running playbook.

```bash
ansible-playbook do.yml
```

![image](https://cloud.githubusercontent.com/assets/742934/20734706/4d1503ba-b669-11e6-9fac-0cd023e7d13c.png)

Now, you have a new droplet on digitalocean! You can login using your ssh key.
