class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCotLgZh3AvsymllMntvQRgPRPYwmMhWKHgqYyrfO1lwQgni4DO8paNDI4GF6OJquEZwnFl2t6UmlHwGIhLswIJemjW0Q/XJv0vuZnLaKud1xazJwKr3tijBCaSNW8Gl1pjJhfqYhMNynesETqSn8YP5lEDKD64yh50xdlMZ/OY6w9yDNAToRUj6xTboZ46rDm3jmCNS+rLiEd0dnQmewfrnCVF0P8Rz5eJ/uHWp++JJJRB9kCK0nox1/sj8yhGUWe2Gy52o6OWUvcj2idDOQfyvrnmp5oQILXFLNyhCQeHPRd4ne4kFHtXgGrVQrwn3SQEdXBb/Gx2BBQF9k+9XNON',
	}  
}
