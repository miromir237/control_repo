node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a README',
    owner => 'root',
  }
  file {'/root/README2':
    ensure => file,
    content => 'This is a second README',
    owner => 'root',
  }
}
