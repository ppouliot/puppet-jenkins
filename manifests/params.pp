class jenkins::params {
  case $::osfamily {
    'RedHat': {
      $java_package = 'java-1.6.0-openjdk'
    }
    'Linux': {
      $java_package = 'java-1.6.0-openjdk'
    }
    'Debian': {
      #needs java package for debian.
  #    fail( "Unsupported OS family: ${::osfamily}" )
      $java_package='openjdk-1.6-jdk'

    }

    default: {
      fail( "Unsupported OS family: ${::osfamily}" )
    }
  }

}
