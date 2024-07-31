# Puppet to make changes to our configuration file
file { '~/.ssh/config':
  ensure  => file,
  owner   => 'user',
  group   => 'user',
  mode    => '0600',
  content => "\
Host 54.210.59.50
    Hostname 54.210.59.50
    IgnoreUnkown AddKeysToAgent,UseKeychain
    UseKeychain yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/school
    IdentityFile ~/.ssh/id_rsa
    PasswordAuthentication no
"
