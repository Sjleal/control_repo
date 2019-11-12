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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPaLG/Lp1cA86vaBWU/mr3704NeYOR/qHFqow8QkmlF9pVLKrPnebobpc0aEZNcKryvvDMWGke4FKMGLQ1Rd98PqjSqY0wZlYjt/G4JBvJBsvJg6IlWU5NvXSKXNq3Gclu3OidzCUbY/34ZhieOX5cmY3cRpwe6z4pCWzarpWz5vZtkXr8lZYf6WACs1qLKFYVs7a92JMMeqVC7UZdagguWnHUZXiCO1i1pNnquzZl91Rko+ScPP+1VY47bZM0CqWEdXYCTEDDPblWqzty+odmRUL6vxYXFYGDKSbl+ESTN+ySHk0f32qe20epNFeADee3s3vxC5Px4Llo/4ajYZXh',
	}  
}
