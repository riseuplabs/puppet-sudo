define sudo::extra-access($ensure = 'present', $user = undef, $access = 'ALL=(ALL) ALL') {
     if $user == undef {
       $user = $name
     }
     file { "/etc/sudoers.d/01-user_access-${name}":
       ensure  => 'present',
       owner   => root,
       group   => admin,
       mode    => 640,
       content => "# THIS FILE IS MANAGED BY PUPPET !\n\n${user}        ${access}\n",
     }
}
