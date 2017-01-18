class profile::windows::baseline {

  include dotnet
  include chocolatey

  Package {
    ensure   => installed,
    provider => chocolatey,
  }

  package { 'unzip': }
  package { 'git': }
}
