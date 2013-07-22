lxc

Copyright (C) 2013  Matt Horne <matt at matthorne.info>

This puppet module is to install lxc on Ubuntu / Linux Mint type systems. I haven't tried it on any other distros. The 10.0.3.x network is hard coded in the script in the files directory.

I might want to parameterize it some day. Maybe not. If I did, I would parameterize the ip address network for the LXC bridge device. I would also parameterize the symlink to /home/lxc. Personally, I have a / and /home partitions so I can rebuild my OS quickly and with puppet. All it takes is a git clone and a puppet apply and my machine is back in working order very quickly. Keeping the lxc hosts in /home/lxc means I don't have to rebuild those too. They just work out of the box.

The script that this module runs sets dns for the LXC hosts so that you can ssh to them using "ssh hostname.lxc".

Example: ssh puppet01.lxc

License
-------
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

Contact
-------
Matt Horne
matt at matthorne.info
http://www.matthorne.info

Support
-------

Please log tickets and issues at our [Github](https://github.com/tmhorne/tmhorne-lxc)
