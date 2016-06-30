## How to

  config.vm.provision "shell", inline: <<-SHELL
	curl -s https://raw.githubusercontent.com/bloomagency/vagrant-provisioners/master/nginx-php5.sh | sh
  SHELL

## Credits

[nginx-php.sh](https://www.sitepoint.com/vagrantfile-explained-setting-provisioning-shell/) - George Fekete, Sitepoint.com

[Bloom Agency](https://github.com/bloomagency/) development team past and present
