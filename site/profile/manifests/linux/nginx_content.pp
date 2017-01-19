class profile::linux::nginx_content {
  file { '/var/www/test.com':
    ensure  => file,
    content => 'THIS IS A TEST',
    mode    => '0644',
  }
}
