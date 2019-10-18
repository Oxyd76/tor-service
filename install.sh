#!/bin/sh

#	backup old torrc and tor.service
sudo cp --backup=numbered /etc/systemd/system/tor.service ./ 2>/dev/null
sudo cp --backup=numbered /etc/tor/torrc ./
#	install tor.service and torrc
sudo cp ./tor.service /etc/systemd/system
sudo chmod 644 /etc/systemd/system/tor.service
sudo cp ./torrc /etc/tor
sudo chmod 644 /etc/tor/torrc
sudo systemctl daemon-reload
