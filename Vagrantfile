# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.synced_folder '.', '/vagrant', type: 'rsync'

  config.vm.provider 'virtualbox' do |vb|
    vb.cpus = '1'
    vb.memory = '1024'
  end

  # Provisions (One time)
  config.vm.provision 'dependencies', type: :shell,
                                      path: 'bootstrap_dependencies.sh'
end
