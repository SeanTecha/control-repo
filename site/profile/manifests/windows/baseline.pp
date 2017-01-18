class profile::windows::baseline {
  Package {
    ensure   => installed,
  }

  include chocolatey

  package { 'unzip': }
  package { 'git': }
}
