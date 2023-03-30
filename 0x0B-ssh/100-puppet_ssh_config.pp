# Puppet to make changes to our configuration file
file { '~/.ssh/config':
  ensure  => file,
  owner   => 'user',
  group   => 'user',
  mode    => '0600',
  content => "\
Host 172.17.0.17
    Hostname 172.17.0.17
    IgnoreUnkown AddKeysToAgent,UseKeychain
    UseKeychain yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/school
    IdentityFile ~/.ssh/id_rsa
    PasswordAuthentication no
"
}
