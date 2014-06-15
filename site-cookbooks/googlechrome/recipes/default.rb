#
# Cookbook Name:: googlechrome
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

case node['platform']
when "ubuntu"
    apt_repository "google-chrome" do
    uri "http://dl.google.com/linux/chrome/deb/"
    components ["stable", "main"]
    key 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
    action :add
  end
end

package 'google-chrome-stable' do
  action :install
end
