activator_version = '1.2.2'
default['activator'][:version] = activator_version
default['activator'][:download_url] = "http://downloads.typesafe.com/typesafe-activator/#{activator_version}/typesafe-activator-#{activator_version}.zip"
default['activator'][:install_dir] = '/home/vagrant/bin'
