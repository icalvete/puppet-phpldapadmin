class phpldapadmin () inherits phpldapadmin::params {

  anchor {'phpldapadmin::begin':
    before => Class['phpldapadmin::install']
  }
  class {'phpldapadmin::install':
    require => Anchor['phpldapadmin::begin']
  }
  class {'phpldapadmin::config':
    require => Class['phpldapadmin::install']
  }
  anchor {'phpldapadmin::end':
    require => Class['phpldapadmin::config']
  }
}
