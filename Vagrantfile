# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"
  config.vm.box = "precise64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :forwarded_port, host: 5000, guest: 80  

  # Setup web server
  config.vm.provision "shell", path: 'install_script.sh', args: '/vagrant', privileged: false
end
