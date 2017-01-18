class profile::windows::baseline {

  include chocolatey

  Package {
    ensure   => installed,
  }

  package { 'unzip': }
  package { 'git': }
}
