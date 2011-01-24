class sudo::base {
    if $sudo_deploy_sudoers {
      file{'/etc/sudoers':
        source => [ "puppet:///modules/site-sudo/sudoers/${fqdn}/sudoers",
                    "puppet:///modules/site-sudo/sudoers/sudoers",
                    "puppet:///modules/sudo/sudoers/${operatingsystem}/sudoers",
                    "puppet:///modules/sudo/sudoers/sudoers" ],
        owner => root, group => 0, mode => 0440;
      }
    }
}