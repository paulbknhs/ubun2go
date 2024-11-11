#!/usr/bin/env bash

cd $HOME/.local/share/
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
