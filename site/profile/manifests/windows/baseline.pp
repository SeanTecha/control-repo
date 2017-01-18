class profile::windows::baseline {
  include chocolatey

  Package {
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'unzip': }
  package { 'git': }
}
