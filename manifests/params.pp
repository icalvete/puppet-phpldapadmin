class phpldapadmin::params {

  $org_domain       = hiera('org_domain')

  $ldap_host        = hiera('ldap_host')
  $ldap_suffix      = hiera('ldap_suffix')
  $ldap_search_user = hiera('ldap_search_user')
  $ldap_search_pass = hiera('ldap_search_pass')

  $config_path      = '/etc/phpldapadmin'

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {}
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}
