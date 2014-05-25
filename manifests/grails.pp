define gvm::grails(
  $ensure = 'installed',
  $version = $name,
  $default = false
) {
  require gvm::install

  exec { "install-grails-$version":
  	command => "bash --login -c 'gvm install grails ${version}'",
  	creates => "/Users/${::boxen_user}/.gvm/grails/${version}"
  }

  if($default) {
    exec { "set-grails-default":
      command => "bash --login -c 'gvm default grails ${version}'",
    }
  }
}