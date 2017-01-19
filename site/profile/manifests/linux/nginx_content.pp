class profile::linux::nginx_content {
  file { '/var/www/':
    ensure  => directory,
    mode    => '0644',
  }

  file { '/var/www/index.html':
    ensure  => file,
    content => 'THIS IS A TEST YO',
    mode    => '0644',
    notify  => Service['nginx'],
  }
}
