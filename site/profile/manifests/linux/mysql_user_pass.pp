class profile::linux::mysql_user_pass {
  mysql::db { 'mydb':
    user     => 'myuser',
    password => 'Just4now!',
    host     => 'localhost',
    grant    => ['SELECT', 'UPDATE'],
  }
}
