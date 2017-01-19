class profile::linux::nginx_content {
  file { '/var/www/':
    ensure  => directory,
    mode    => '0644',
  }

  file { '/var/www/test.com':
    ensure  => file,
    content => 'THIS IS A TEST',
    mode    => '0644',
    notify  => Service['nginx'],
  }

  service { 'nginx':
    ensure => running,
    enable => true,
  }
}
