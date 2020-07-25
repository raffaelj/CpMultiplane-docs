#!/bin/bash 

cd ~/html

git clone https://github.com/raffaelj/CpMultiplane.git .
git clone https://github.com/agentejo/cockpit.git cockpit

./mp multiplane/quickstart --template full

./mp multiplane/load-i18n

./mp multiplane/create-dummy-data --site_name mpfull
