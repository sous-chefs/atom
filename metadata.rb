name 'atom'
maintainer 'Sous Chefs'
maintainer_email 'help@sous-chefs.org'
license 'Apache-2.0'
description 'Installs/Configures the Atom text editor - a hackable editor based on Electron, maintained by GitHub'

version '0.3.1'

supports 'mac_os_x'
supports 'windows'
supports 'ubuntu'
supports 'debian'

chef_version '>= 13.0'
depends 'apt', '>= 6.1'
depends 'homebrew', '>= 4.3'

source_url 'https://github.com/sous-chefs/atom'
issues_url 'https://github.com/sous-chefs/atom/issues'
