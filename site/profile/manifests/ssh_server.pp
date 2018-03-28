class profile::ssh_server {

  package {'openssh-server':
    ensure => present,
  }
  
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_key { 'root@master01.puppet':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRXdZ4dNLNv4NSPNQez2FRTZVeqAy9rg5qN6C8JU+p4LsxKDIdtQihMx730hmodMlaGD1lKwL5vzER3Uoy1JTKSrcMFftKAWsaU06OnESPf0CmTwwAx0V/kQGglUQIqtez6XGw3KHjNaATKqII72MnKEegCrFWhWu6NUdTXLSzahcauyD7d7yjJiXQIUQg83kILrfB/zHru467zJFfNvWbYFCXJUSQpttimWBy7uMgDwPL8hyyvEU9+ZMh9wqvlU8uFfxz/+nWMRZJnctjQgDFA3FHC0VaPQSddkgLaJPJcSjkarD0Fcjf+/k8oXwurq9+lJsU/jTeW8DOPoHBeKRT',
  }

}
