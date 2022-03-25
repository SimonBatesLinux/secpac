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

# copy python script to path
mkdir -p /usr/local/bin
cp secpac /usr/local/bin
chmod 755 /usr/local/bin/secpac

# copy default config file
mkdir -p /etc
cp secpac.conf /etc
chmod 644 /etc/secpac.conf

# install man page
mkdir -p /usr/local/man/man1
cp secpac.1 /usr/local/man/man1
mandb 1>>/dev/null
