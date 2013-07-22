class lxc {

  package { 'lxc': ensure => installed }
  package { 'lxc-templates': ensure => installed }
  
  file { '/var/lib/lxc':
    ensure	=> 'link',
    target	=> '/home/lxc',
    force	=> 'true',
  }

  exec { 'lxc-dnsmasq-setup':
    command	=> "lxc-dnsmasq-setup",
    path	=> "/etc/puppet/modules/lxc/files",
  }

}
