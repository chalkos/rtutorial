# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-6.5"

  config.vm.network :forwarded_port, host: 3000, guest: 3000

  config.vm.provision :shell, :path => "vagrant/install-rvm.sh",  :args => "stable"
  config.vm.provision :shell, :path => "vagrant/install-ruby.sh", :args => "2.1.0 rails:4.0.2 haml execjs node"
end
