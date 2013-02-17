# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu-12.04"

  config.vm.forward_port 80, 8001
  config.vm.forward_port 443, 8002
  config.vm.forward_port 22, 2222

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'apt'
    chef.add_recipe 'build-essential'
    chef.add_recipe 'git'
    chef.add_recipe 'nginx'
    chef.add_recipe 'custom::pypiserver'
    chef.json = {
      :pypiserver => {
        :address => 'localhost',
        :port => 8080,
        :server_name => 'pypi.imtapps.com',
        :passwd_file => '.htpasswd',
        :ssl_crt => 'active.crt',
        :ssl_key => 'active.key',
      },
      :nginx => {
        :client_max_body_size => '50M',
      }
    }
  end
end
