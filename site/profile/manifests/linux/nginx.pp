class profile::linux::nginx {
  class{ 'nginx':
    manage_repo    => true,
    package_source => 'nginx-stable',
    www_root => 'var/www',
  }
}
