#
# Cookbook Name:: dropbox
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

bash 'install dropbox' do
  user 'vagrant'
  group 'vagrant'

  cwd '/home/vagrant'
  environment 'HOME' => '/home/vagrant'
  code <<-EOC
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
  EOC
  creates '~/.dropbox-dist'
end


