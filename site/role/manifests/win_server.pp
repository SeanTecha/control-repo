class role::win_server {
  include profile::windows::chocolatey
  include profile::windows::baseline
  include profile::windows::features
  include profile::windows::iis
}
