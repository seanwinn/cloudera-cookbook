!#/bin/bash

sudo apt-get install -y git
sudo curl -L https://www.opscode.com/chef/install.sh | sudo bash
sudo git clone https://github.com/seanwinn/cloudera-cookbook.git /var/chef
sudo mkdir -p /etc/chef
sudo cp /var/chef/solo.rb /etc/chef/solo.rb
sudo chef-solo -j /var/chef/server.json

