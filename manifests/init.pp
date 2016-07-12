class vagrant ($vagrant_user='vagrant') {

  file { "/home/$vagrant_user/.bash_profile":
    ensure => present,
    owner  => $vagrant_user,
    group  => $vagrant_user,
    mode   => '0644',
    source => 'puppet:///modules/vagrant/bash_profile'
  }

  file { "/home/$vagrant_user/.bashrc":
    ensure => present,
    owner  => $vagrant_user,
    group  => $vagrant_user,
    mode   => '0644',
    source => 'puppet:///modules/vagrant/bashrc'
  }

  file { "/home/$vagrant_user/.tmux.conf":
    ensure => present,
    owner  => $vagrant_user,
    group  => $vagrant_user,
    mode   => '0644',
    source => 'puppet:///modules/vagrant/tmux.conf'
  }

  file { "/home/$vagrant_user/.git-prompt.sh":
    ensure => present,
    owner  => $vagrant_user,
    group  => $vagrant_user,
    mode   => '0644',
    source => 'puppet:///modules/vagrant/git-prompt.sh'
  }

}
