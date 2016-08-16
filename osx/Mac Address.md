I  usually changed my MAC address with the following commands:

## Get a New MAC Address
```
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
```

## Changing the MAC Address
```
sudo ifconfig en0 ether d4:13:b3:e4:f8:12
```

When I enter:
```
ifconfig en0 |grep ether
```

### I still get the old MAC address :( - Who can help? I would love to have a script or system to automatically change it on system boot.

```
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -z
sudo ifconfig en0 ether d4:33:a3:ed:f2:12
networksetup -detectnewhardware
```