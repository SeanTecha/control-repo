class profile::linux::nginx {
  class{ 'nginx':
    manage_repo    => true,
    package_source => 'nginx-stable',
  }

  nginx::resource::server { '10.32.162.14':
    www_root => '/var/www/',
  }
}
