#
# Cookbook Name:: eclipse
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#
bash 'install eclipse' do
  user 'vagrant'
  group 'vagrant'

  cwd '/home/vagrant'
  environment 'HOME' => '/home/vagrant'

  install_dir = node['eclipse']['install_dir']
  uri = node['eclipse']['download_uri']

  file_name = node['eclipse']['file_name']
  dir_name = node['eclipse']['dir_name']
  code <<-EOC
    rm -f ./Desktop/eclipse-x64
    mkdir #{install_dir}
    cd bin
    wget #{uri}
    tar xvfz #{file_name}
    mv eclipse #{dir_name}
    mv eclipse
    rm -f #{file_name}
    cd ../Desktop
    ln -s ../bin/#{dir_name}/eclipse eclipse-x64
  EOC
  creates "#{install_dir}/#{dir_name}"
end


