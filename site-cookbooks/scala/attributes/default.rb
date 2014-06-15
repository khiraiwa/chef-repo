scala_version = '2.11.1'
default['scala'][:version] = scala_version
default['scala'][:download_url] = "http://downloads.typesafe.com/scala/#{scala_version}/scala-#{scala_version}.deb"
