## Change subnet for WSL

Link to discussion: https://github.com/microsoft/WSL/issues/4210

- Update WSL at the latest version
- Browse to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss`
  - Edit the keys `NatGatewayIpAddress` and `NatNetwork` to set the subnet and the ip address for the virtual interface

<img src="https://github.com/jupitersinsight/sysadminstuff/assets/110602224/9c6b1863-ee5a-4a7f-9673-5fa8cc0fd1bd" width=600 height=auto>
