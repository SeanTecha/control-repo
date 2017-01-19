class profile::linux::baseline {
  Package {
    ensure => installed,
  }

  package { 'unzip': }
  package { 'git': }
}
