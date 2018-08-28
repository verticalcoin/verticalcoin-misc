Verticalcoin systemd service
==================================
- restart after daemon failure

Build
----------------------
1.  Clone the source:

        git clone https://github.com/verticalcoin/verticalcoin-misc

2.  Copy systemd .service file

        cp -f verticalcoin-misc/systemd/verticalcoind.service /etc/systemd/system/verticalcoind.service
        chmod a+x /etc/systemd/system/verticalcoind.service

3.  enable service
        systemctl daemon-reload
        service verticalcoind start       

4.  check service
        service verticalcoind status
        
        [...]
        "Active: active (running) since Tue 2018-08-28 22:17:42 CEST; 16min ago"
        [...] 
