class profile::linux::nginx {
  class{ 'nginx':
    manage_repo    => true,
    package_source => 'nginx-stable',
  }

  nginx::resource::server{ 'localhost':
    www_root => '/var/www/',
  }
}
