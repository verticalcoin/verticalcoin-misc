#!/bin/bash
cp -f systemd/verticalcoind.service /etc/systemd/system/verticalcoind.service
chmod a+x /etc/systemd/system/verticalcoind.service
systemctl daemon-reload
service verticalcoind start
service verticalcoind status