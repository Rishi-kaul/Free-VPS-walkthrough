#!/bin/bash
apt update
apt install ubuntu-desktop -y
apt install xrdp -y
systemctl enable xrdp
systemctl start xrdp
