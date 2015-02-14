# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'chef-kibana'
  config.vm.define config.vm.hostname

  config.vm.network "private_network", ip: "192.168.50.5"
  config.vm.synced_folder "esdata/", "/esdata",
    owner: 'elasticsearch', group: 'elasticsearch', create: true

  config.vm.provider "virtualbox" do |vb|
    vb.name = config.vm.hostname
  end

  config.vm.provision "chef_client" do |chef|
    chef.provisioning_path = '/etc/chef'
    chef.custom_config_path = '.chef/client.rb'
    chef.chef_server_url = "https://api.opscode.com/organizations/kibana-demo"
    chef.validation_key_path = ".chef/kibana-demo-validator.pem"
    chef.validation_client_name = 'kibana-demo-validator'
    chef.add_recipe "demo-kibana"
  end

end
