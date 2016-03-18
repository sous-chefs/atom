chef-atom
=========

[![Build Status](https://travis-ci.org/mohitsethi/chef-atom.svg?branch=master)](https://travis-ci.org/mohitsethi/chef-atom)

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

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `feature/component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
- Mohit Sethi <mohit@sethis.in>
