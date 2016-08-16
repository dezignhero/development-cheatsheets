#Networking

Change my MAC address with the following commands:

### Get a New MAC Address
```openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'```

### Changing the MAC Address
```sudo ifconfig en0 ether d4:13:b3:e4:f8:12```

### When I enter:

```ifconfig en0 |grep ether```

I still get the old MAC address.  Is there a script to automatically change it on system boot?

```
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -z
sudo ifconfig en0 ether <Mac Address>
networksetup -detectnewhardware
```

###Read Current Address
```ifconfig en0 | grep ether

###Check Who's on the Network
```arp -a```

###Disassociate Current Address
```sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -z```

###Set new MAC Address
```sudo ifconfig en0 ether <Mac Address>``` // ex. d7:e3:21:ed:f2:12