class profile::windows::baseline {

  dotnet { 'dotnet35': version => '3.5' }
  include chocolatey

  Package {
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'unzip': }
  package { 'git': }
}
