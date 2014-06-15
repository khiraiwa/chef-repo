#
# Cookbook Name:: scala
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

bash 'install scala' do
  user 'root'
  group 'root'

  cwd '/home/vagrant'
  environment 'HOME' => '/home/vagrant'

  download_url = node['scala']['download_url']
  version = node['scala']['version']

  code <<-EOC
    wget #{download_url}
    dpkg -i scala-#{version}.deb
    rm -f scala-#{version}.deb
  EOC
end
