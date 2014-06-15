#
# Cookbook Name:: jdk
# Recipe:: default
#
# Copyright 2013, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

package 'python-software-properties' do
  action :install
end

case node['platform']
when "ubuntu"
  apt_repository "webupd8team" do
    uri "http://ppa.launchpad.net/webupd8team/java/ubuntu"
    components ['main']
    distribution node['lsb']['codename'] # dist
    keyserver "keyserver.ubuntu.com"
    key "EEA14886"
    deb_src true
    action :add
  end
end

execute "accept-license" do
  command "echo oracle-jdk7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections"
end

package 'oracle-jdk7-installer' do
  options '-f --force-yes'
  action :install
end
