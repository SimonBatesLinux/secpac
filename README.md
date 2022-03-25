# secpac
Package whitelisting application

# install
run install.sh as root

# usage
type "secpac [packages]" and secpac will return only the packages listed under the whitelist

# custom whitelist
Option 1 for all users:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;edit the /etc/secpac.conf<br/>

Option 2 for sepecific users:<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;copy /etc/secpac.conf to ~/.conf/secpac.conf<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;then edit ~/.conf/secpac.conf<br/>
