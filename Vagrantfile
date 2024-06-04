Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.network "private_network", ip: "192.168.56.3"
  config.vm.hostname = "deploy"
  config.hostsupdater.aliases = ["shop"]
  config.vm.network "forwarded_port", guest: 4000, host: 4000 # shop
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 5000
  end
end