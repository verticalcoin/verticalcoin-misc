Verticalcoin systemd service
==================================
- restart after daemon failure

setup service 
----------------------
1.  Clone the repository:
```
        git clone https://github.com/verticalcoin/verticalcoin-misc
```
2. 
    Check verticalcoin.conf and remove "daemon=1". It´s nessesary that verticalcoind is not run as daemon.
```
        nano ~/.verticalcoin/verticalcoin.conf
```

    comment out daemon=1

```
        dbcache=300
        maxconnections=800
        
        rpcuser=verticalcoin
        rpcpassword=securepassword
        
        seednode=seed1.vrtseed.ovh
        addnode=H01.vrtnode.ovh
        addnode=H02.vrtnode.ovh
        addnode=H03.vrtnode.ovh
        addnode=H04.vrtnode.ovh
        addnode=H05.vrtnode.ovh
        ;daemon=1
```

2.  Copy systemd .service file
```
        cp -f verticalcoin-misc/systemd/verticalcoind.service /etc/systemd/system/verticalcoind.service
        chmod a+x /etc/systemd/system/verticalcoind.service
```
3.  enable service
```
        systemctl daemon-reload
        service verticalcoind start       
```
4.  check service
 ```
        service verticalcoind status
        
        [...]
        "Active: active (running) since Sun 2018-08-12 12:08:42 CEST; 50ms ago"
        [...] 
```

Use install-service.sh
---------------------
1.  Clone the repository:
```
        git clone https://github.com/verticalcoin/verticalcoin-misc

```
2.  Run script:
``` 
        cd verticalcoin-misc
		./install-service.sh

		[...]
        "Active: active (running) since Sun 2018-08-12 12:08:42 CEST; 50ms ago"
        [...]
```
