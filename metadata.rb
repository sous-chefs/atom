name             'chef-atom'
maintainer       'Mohit Sethi'
maintainer_email 'mohit@sethis.in'
license          'Apache 2.0 '
description      'Installs/Configures Atom()'
long_description 'Installs/Configures chef-atom'
version          '0.1.0'

recipe 'atom', 'Installs/Configures Atom'

supports 'windows'
supports 'ubuntu'
supports 'debian'

depends 'chocolatey'
depends 'apt'
