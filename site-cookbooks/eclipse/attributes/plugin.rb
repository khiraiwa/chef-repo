# repository
default['eclipse'][:repo_kepler] ="http://download.eclipse.org/releases/Kepler"
default['eclipse'][:repo_eclipse_project_updates] ="http://download.eclipse.org/eclipse/updates/4.3"
default['eclipse'][:repo_scala] = "http://download.scala-ide.org/sdk/helium/e38/scala211/stable/site"

# feature
default['eclipse'][:plugin_scala_ide] = "org.scala-ide.sdt.feature.feature.group"
default['eclipse'][:plugin_scala_ide_dev_support] = "org.scala-ide.sdt.dev.feature.feature.group"
default['eclipse'][:plugin_scala_ide_source] = "org.scala-ide.sdt.source.feature.feature.group"
default['eclipse'][:plugin_scala_test] = "org.scala-ide.sdt.scalatest.feature.feature.group"
default['eclipse'][:plugin_scala_tools_search] = "org.scala.tools.eclipse.search.feature.feature.group"
default['eclipse'][:plugin_scalaide_worksheet] = "org.scalaide.worksheet.feature.feature.group"
