# Fortigate Debug Commands

**Ike**
```
diagnose debug reset
diagnose debug application ike -1 (where -1 stands for 'detailed')
diagnose debug enable|disable 
```

# Create VPN IKEv2/IPSEC Profile for Android version 12+

Links:
- **[samuraj-cz.com](https://www.samuraj-cz.com/clanek/fortigate-ipsec-vpn-debug-a-problemy/)**

## Ikev2/IPSEC PSK
On Android device, create VPN profile and add:
- profile name
- remote server address
- IPSEC identifier (name of existing group on the Fortigate)
- Pre-Shared Key

**In order to defend device forced-settings against users, an EMM/MDM solution is required.**

On Fortigate device, policy allow remote interface to connect to specific VLAN does not require a valid protocol to be allowed... so create one for a random port (such as 65535) and set it as the only allowed port/service/protocol.
