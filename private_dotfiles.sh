source /vagrant/vagrant.cfg
dotfiles_tags=${dotfiles_tags:-perso}

if [ ! -d /home/vagrant/app/private-dotfiles ]; then
  git clone ${private_dotfiles_url} /home/vagrant/app/private-dotfiles
  chown -R vagrant:vagrant /home/vagrant/app/private-dotfiles
  sudo -u vagrant rcup -t ${dotfiles_tags}
fi
