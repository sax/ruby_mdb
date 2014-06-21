# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
  end

  config.vm.box = "livinginthepast/smartos-base64"
  config.global_zone.platform_image = '20140613T024634Z'

  config.zone.name      = 'local'
  config.zone.image     = '8639203c-d515-11e3-9571-5bf3a74f354f'
  config.zone.brand     = 'joyent'
  config.zone.memory    = 3048
  config.zone.disk_size = 5
end
