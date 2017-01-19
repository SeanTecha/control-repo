class role::linux_webserver {
  include profile::linux::nginx
  include profile::linux::nginx_content
}
