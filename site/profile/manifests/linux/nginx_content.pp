class profile::linux::nginx_content {
  file { '/var/www/':
    ensure  => directory,
    mode    => '0644',
  }

  file { '/var/www/index.html':
    ensure  => file,
    content => epp('profile/nginx_content.epp', { 'name' => 'Sean' } ),
    mode    => '0644',
    notify  => Service['nginx'],
  }
}
