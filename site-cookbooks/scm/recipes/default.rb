#
# Cookbook Name:: scm
# Recipe:: default
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#

package 'git' do
  action :install
end

package 'subversion' do
  action :install
end
