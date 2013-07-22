class lxc {

  package { 'lxc': ensure => installed }
  package { 'lxc-templates': ensure => installed }

# I have my lxc machines in /home/lxc, so that I can rebuild my OS
#   and as soon as I clone my private puppet repo and run puppet apply,
#   everything works just like it did before I formatted & reinstalled.  
#  file { '/var/lib/lxc':
#    ensure	=> 'link',
#    target	=> '/home/lxc',
#    force	=> 'true',
#  }

  exec { 'lxc-dnsmasq-setup':
    command	=> "lxc-dnsmasq-setup",
    path	=> "/etc/puppet/modules/lxc/files",
  }

}
