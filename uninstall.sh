#!/bin/sh

#    Secpac  Copyright (C) 2022 Simon Bates

#    This file is part of Secpac.
#    Secpac is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    Secpac is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with Secpac.  If not, see <https://www.gnu.org/licenses/>.

if [ "$EUID" -ne 0 ];then
	echo "Please run as root"
	exit
fi

# delete script from bin
rm /usr/local/bin/secpac

# delete default config file
rm /etc/secpac.conf

# delete man page
rm /usr/local/man/man1/secpac.1
rmdir /usr/local/man/man1 2>>/dev/null # remove man1 if empty
