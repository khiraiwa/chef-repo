#
# Cookbook Name:: emacs24
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

package 'python-software-properties' do
  action :install
end

case node['platform']
when "ubuntu"
  apt_repository "cassou-emacs" do
    uri "http://ppa.launchpad.net/cassou/emacs/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "CEC45805"
  end
end

package 'emacs24' do
  action :install
end
