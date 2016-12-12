-- variables are defined by executing ansible script
LOAD XML LOCAL INFILE '{{data_archive_directory}}/Users.xml'
INTO TABLE Users
ROWS IDENTIFIED BY '<row>'; 

LOAD XML LOCAL INFILE '{{data_archive_directory}}/test.xml'
INTO TABLE Comments
ROWS IDENTIFIED BY '<row>'
;

/*
task path: /vol/dev/skycode/db/mysql/load.yml:11
fatal: [192.168.33.200]: FAILED! => {"changed": false, "failed": true, "msg": "ERROR 2 (00000) at line 6: Error reading
file 'ted nodes, and one node_type_id.\" CreationDate=\"2012-09-01T21:31:11.647\" UserId=\"1619968\" />\r\n  <row Id=\"1
6391218\" PostId=\"12231558\" Score=\"0\" Text=\"Is this article on your server or someone else's?\" CreationDate=\"2012
-09-01T21:31:17.810\" UserId=\"718728\" />\r\n  <row Id=\"16391219\" PostId=\"12231558\" Score=\"0\" Text=\"This is a ve
ry broadly phrased question. Is there some specific step you're stuck on?\" CreationDate=\"2012-09-01T21:31:27.233\" Use
rId=\"41655\" />\r\n  <row Id=\"16391220\" PostId=\"12\n"}
        to retry, use: --limit @/vol/dev/skycode/db/mysql/load.retry

PLAY RECAP *********************************************************************
192.168.33.200             : ok=2    changed=1    unreachable=0    failed=1

vagrant@vagrant-ubuntu-trusty-64:/vol/dev/skycode$ grep /data/data/SO/Comments.xml "16391218"
grep: 16391218: No such file or directory
vagrant@vagrant-ubuntu-trusty-64:/vol/dev/skycode$ grep "16391218" /data/data/SO/Comments.xml
  <row Id="16391218" PostId="12231558" Score="0" Text="Is this article on your server or someone else's?" CreationDate="2012-09-01T21:31:17.810" UserId="718728" />
  <row Id="23495489" PostId="16391218" Score="0" Text="ok i will try. thanks man ;)" CreationDate="2013-05-06T03:31:42.083" UserId="2321978" />
vagrant@vagrant-ubuntu-trusty-64:/vol/dev/skycode$ ansible-playbook -i local_inventory db/mysql/load.yml -vv
Using /home/vagrant/.ansible.cfg as config file

*/


/*
<row Id="9" Reputation="11122" CreationDate="2008-07-31T21:35:26.517" DisplayName="Kevin Dente" LastAccessDate="2016-0
8-25T23:58:55.527" WebsiteUrl="http://weblogs.asp.net/kdente" Location="Oakland, CA" AboutMe="&lt;p&gt;Independent softw
are engineer&lt;/p&gt;&#xA;" Views="3842" UpVotes="44" DownVotes="4" Age="45" AccountId="7" />
*/