dir_name = 'eclipse-standard-kepler-SR2-linux-gtk-x86_64'
file_name = "#{dir_name}.tar.gz"
default['eclipse'][:dir_name] = dir_name
default['eclipse'][:file_name] = file_name
default['eclipse'][:download_uri] = "http://ftp.yz.yamagata-u.ac.jp/pub/eclipse/technology/epp/downloads/release/kepler/SR2/#{file_name}"
default['eclipse'][:install_dir] = '/home/vagrant/bin'
