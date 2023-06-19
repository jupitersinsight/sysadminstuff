## Initial setup
Download and install [Docker Desktop]([Docker Desktop](https://www.docker.com/products/docker-desktop/)).  
Be sure to select WSL as engine for Docker.

## How to run containers

Command to run docker and bind a mount volume:  
```
docker container run --rm -d -p localport:remoteport --name="nameofthecontainer" -v localfolder(such as $(pwd) or ${pwd}):remotefolder(such as /var/www/html)
```
--------------
In order to let WSL linux distros access docker containers running on Windows instance localhost, enable the Docker setting "Resources/WSL Integration".  
<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/8169fe94-fd43-4423-8961-1d362b7f7c46" width=450 height=auto>  
Then choose the distros to share docker with, restart and apply.  

Done that, docker containers can be managed from WSL and accessible at localhost:[port]  
<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/96d6d8db-cf1e-45b5-abb3-c40c299a28dc" width=900 height=auto>  

----------------
## WSL Appearence
Use Windows Terminal (from Microsoft Store) to get a shell "more unix-style" than powershell.  
In Windows Terminal yuo can set a default profile to start with as soon as the terminal pops up and change the appearence under **Profiles** -> **<Name of Profile>** -> **Appearance**  
  
<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/fb75f6e7-9a53-4e7e-b1c9-1e7321e5810d" widht=700 height=auto>  

---------------
  
## Proxy WSL commmands to be captured in Windows (Burpsuite|ZAP|Other proxy-capable software)
 
Since WSL IP addressing is not fixed, in the WSL instance we need to capture the IP assigned to the Windows WSL interface.
```
cat /etc/resolv.conf | grep nameserver | awk '{print $2}'
```
The output can be used to set a system-wide proxy for http and https requests in this way
```
sudo vi /etc/bash.bashrc
proxyIp=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
export http_proxy="http://$proxyIp:port"
export https_proxy="http://$proxyIp:port"
```
and then call the proxy in tools like curl
```
curl -x $http_proxy https://target.com
```
or declared in a [command substitution context](http://mywiki.wooledge.org/CommandSubstitution) in tools like curl (below to create an alias with some preconfigured arguments):
```
sudo vi /home/username/.bashrc
alias pcurl="curl -x $(cat /etc/resolv.conf | grep nameserver | awk '{print $2}' | echo -e "$(cat -):8080") -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36' --insecure -v"
```
Be sure to enable the proxy listener on Windows WSL interface (or on all interfaces).
