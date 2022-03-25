# secpac
Package whitelisting application

# install
run install.sh as root

# usage
type "secpac [packages]" and secpac will return only the packages listed under the whitelist

example usage on arch:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;sudo pacman -S $(secpac neofetch)

# custom whitelist
Option 1 for all users:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;edit the /etc/secpac.conf<br/>

Option 2 for sepecific users:<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;copy /etc/secpac.conf to ~/.config/secpac.conf<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;then edit ~/.config/secpac.conf<br/>
