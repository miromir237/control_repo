node default {
}

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to $fqdn\n",
  }
}

node /^web/ {
  include role::web_server
}

node /^db/ {
  include role::db_server
}
