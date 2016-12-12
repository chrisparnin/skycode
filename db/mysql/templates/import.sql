-- variables are defined by executing ansible script
LOAD XML LOCAL INFILE '{{data_archive_directory}}/Users.xml'
INTO TABLE Users
ROWS IDENTIFIED BY '<row>'; 
/*
<row Id="9" Reputation="11122" CreationDate="2008-07-31T21:35:26.517" DisplayName="Kevin Dente" LastAccessDate="2016-0
8-25T23:58:55.527" WebsiteUrl="http://weblogs.asp.net/kdente" Location="Oakland, CA" AboutMe="&lt;p&gt;Independent softw
are engineer&lt;/p&gt;&#xA;" Views="3842" UpVotes="44" DownVotes="4" Age="45" AccountId="7" />
*/