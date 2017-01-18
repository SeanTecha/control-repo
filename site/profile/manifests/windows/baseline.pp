class profile::windows::baseline {

  Package {
    ensure   => installed,
  }
  
  include chocolate,

  package { 'unzip': }
  package { 'git': }
}
