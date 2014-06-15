#
# Cookbook Name:: eclipse
# Recipe:: plugin
#
# Copyright 2014, khiraiwa
#
# All rights reserved - Do Not Redistribute
#
bash 'install eclipse plugin' do
  user 'vagrant'
  group 'vagrant'

  cwd '/home/vagrant'
  environment 'HOME' => '/home/vagrant'

  install_dir = node['eclipse']['install_dir']
  uri = node['eclipse']['download_uri']

  file_name = node['eclipse']['file_name']
  dir_name = node['eclipse']['dir_name']

  eclipse_home = "#{install_dir}/#{dir_name}"
  eclipse_binary = "#{eclipse_home}/eclipse"
  
  code <<-EOC
    #{eclipse_binary} -nosplash \
    -application org.eclipse.equinox.p2.director \
    -profile SDKProfile \
    -destination #{eclipse_home} \
    -repository #{node['eclipse']['repo_kepler']},#{node['eclipse']['repo_eclipse_project_updates']},#{node['eclipse']['repo_scala']} \
    -installIU #{node['eclipse']['plugin_scala_ide']}\
    -installIU #{node['eclipse']['plugin_scala_ide_dev_support']}\
    -installIU #{node['eclipse']['plugin_scala_ide_source']}\
    -installIU #{node['eclipse']['plugin_scala_test']}\
    -installIU #{node['eclipse']['plugin_scala_tools_search']}\
    -installIU #{node['eclipse']['plugin_scalaide_worksheet']}
  EOC
end




