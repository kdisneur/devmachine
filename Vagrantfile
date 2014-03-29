VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box     = 'devmachine'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/s/cssxfu7jc641uze/raring64.devmachine.vmware_fusion.box'
  config.vm.network 'private_network', ip: '192.168.51.42'
  config.vm.network 'public_network'

  config.vm.provision 'shell', path: './private_dotfiles.sh'
end
