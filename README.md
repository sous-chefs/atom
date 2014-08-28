chef-atom
=========

Install/Configures `atom.io`

Provides LWRP's `atom_apm` to install, uninstall, upgrade packages.

Recipes
---------
### default
Installs atom via package manager.

LWRP Usage
---------

### atom_apm
This resource manages apm packages, supporting the following actions:

    :install(default), :uninstall, :upgrade
#### Examples,
  ```ruby
  # Install 'lychee-theme'
  atom_apm 'lychee-theme'

  # Uninstall 'dracula-theme'
  atom_apm 'dracula-theme' do
    action :uninstall
  end
  ```
