#
# Author:: Mohit Sethi <mohit@sethis.in>
# Copyright:: Copyright (c) 2014-15, Mohit Sethi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# version-specific URLs
# https://github.com/atom/atom/releases/download/v1.5.4/AtomSetup.exe
# https://github.com/atom/atom/releases/download/v1.5.4/atom-amd64.deb

# latest release URLs
default['atom']['source_url'] = value_for_platform_family(
  'mac_os_x' => 'https://atom.io/download/mac',
  'windows'  => 'https://atom.io/download/windows',
  'debian'   => 'https://atom.io/download/deb',
  'rhel'     => 'https://atom.io/download/rpm'
)
