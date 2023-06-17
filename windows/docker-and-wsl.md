In order to let WSL linux distros access docker containers running on Windows instance localhost, enable Docker setting "Resources/WSL Integration".  
<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/8169fe94-fd43-4423-8961-1d362b7f7c46" width=650 height=auto>  
Then choose the distros to share docker with, restart and apply.  
Done that, docker containers can be started and stopped from WSL and accessible at localhost:[port]  
<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/55e2f51b-854e-4d41-accd-f9c32617855f" width=650 height=auto>  

Docker container in use:  
<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/6ad90a6c-1619-4529-826c-c4f7bdd10b87" width=650 height=auto>
