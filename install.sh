#!/bin/sh

#	backup old torrc and tor.service
sudo cp /usr/lib/systemd/system/tor.service ./`date +%d.%m.%y-%H_%M_%S`.tor.service
sudo cp /etc/tor/torrc ./`date +%d.%m.%y-%H_%M_%S`.torrc

sudo cp ./tor.service /usr/lib/systemd/system
sudo chmod 644 /usr/lib/systemd/system/tor.service
sudo cp ./torrc /etc/tor
sudo chmod 644 /etc/tor/torrc
sudo systemctl daemon-reload
