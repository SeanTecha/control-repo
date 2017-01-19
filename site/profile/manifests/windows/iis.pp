class profile::windows::iis {
  iis::manage_app_pool { 'my_application_pool':
    enable_32_bit           => true,
    managed_runtime_version => 'v4.0',
  }

  iis::manage_site { 'www.mysite.com':
    site_path     => 'C:\inetpub\wwwroot\mysite',
    site_id       => '10',
    port          => '80',
    ip_address    => '*',
    host_header   => 'www.mysite.com',
    app_pool      => 'my_application_pool'
  }
}
