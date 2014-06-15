#
# Cookbook Name:: activator
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

bash 'install activator' do
  user 'vagrant'
  group 'vagrant'

  cwd '/home/vagrant'
  environment 'HOME' => '/home/vagrant'

  download_url = node['activator']['download_url']
  version = node['activator']['version']
  install_dir = node['activator']['install_dir']
  
  code <<-EOC 
    mkdir #{install_dir}
    cd #{install_dir}
    wget #{download_url}
    unzip typesafe-activator-#{version}.zip
    echo "export PATH=$PATH:#{install_dir}/activator-1.2.2" >> ~/.profile
    rm -f typesafe-activator-#{version}.zip
  EOC
  creates "#{install_dir}/activator-#{version}"
end

