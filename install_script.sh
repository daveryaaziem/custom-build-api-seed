	#!/bin/bash

# install web server dependencies
sudo apt-get update
sudo apt-get -y install python python-virtualenv nginx supervisor

# install application (source location in $1)
mkdir /home/vagrant/cartoons
cp $1/requirements.txt /home/vagrant
cp -R $1/cartoons/* /home/vagrant/cartoons/

# create a virtualenv and install dependencies
virtualenv /home/vagrant/cartoons/venv
source /home/vagrant/cartoons/venv/bin/activate
sudo /home/vagrant/cartoons/venv/bin/pip install -r /home/vagrant/requirements.txt

# configure supervisor
sudo cp /vagrant/cartoon.conf /etc/supervisor/conf.d/
sudo mkdir /var/log/cartoon
sudo supervisorctl reread
sudo supervisorctl update

# configure nginx
sudo cp /vagrant/cartoons.nginx /etc/nginx/sites-available/cartoon
sudo rm -f /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/cartoon/etc/nginx/sites-enabled/
sudo service nginx restart

echo Application deployed to http://localhost:5000/
