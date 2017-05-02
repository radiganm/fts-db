## Vagrantfile (for fts-db)
## Copyright 2016 Mac Radigan
## Mac Radigan

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/yakkety64"

  config.vm.provider "virtualbox" do |v|
    v.name = "Financial Time Series Database Development Environment"
    v.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.ssh.insert_key = true

  config.vm.synced_folder "./data", "/data", create: true, group: "ubuntu", owner: "ubuntu"
  config.vm.provision :shell, :path => "bootstrap.sh"

end

## *EOF*
