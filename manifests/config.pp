class phpldapadmin::config {

    file {'phpldapadmin_configuration':
      content => template("${module_name}/config.php.erb"),
      path    => "${phpldapadmin::params::config_path}/config.php",
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
    }
}

