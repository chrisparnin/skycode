# Data

Playbooks for managing and operating on data.

### Preqs

* Fill in `archive_directory` in variables for downloading files
* `wget` is installed on ansible server.

### Downloading files

When building a data analysis pipeline, fetching raw and large data dumps can be tricky when doing manually. Even with scripts, you may face problems such as:

* Downloads may be incomplete and you need to rerun script.
* You may want to add download new datasources without having to redownload everything else.

[This playbook](fetch.yml) demonstrates how to download the Stack Overflow datasets with ansible, which are nearly dozens of gigs compressed. Although there is a `get_url` module for ansible, it has some issues with very large files, so we just use wget instead. The `creates=` argument will skip redownloading the file if destination already exists.

```
    - name: get stack overflow data
      # wget needs to run with -nv or -q otherwise, output for progress will cause memory errors!
      shell: wget -nv -P {{archive_directory}} http://archive.org/download/stackexchange/{{item}} creates={{archive_directory}}/{{item}}
      with_items: 
      - stackoverflow.com-Badges.7z
      - stackoverflow.com-Comments.7z
      - ...
```          

Run and wait several moments later:
```
ansible-playbook fetch.yml
```
