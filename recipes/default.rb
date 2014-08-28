#
# Cookbook Name:: atom
#
# Author:: Mohit Sethi <mohit@sethis.in>
#
# Copyright 2013-2014, Mohit Sethi.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
when 'windows'
  include_recipe 'chocolatey'
  chocolatey 'atom' do
    version node['atom']['version']
    action :upgrade
  end
when 'debian', 'ubuntu'
  # Add ppa
  include_recipe 'apt'
  apt_repository 'atom-ppa' do
    uri            'http://ppa.launchpad.net/webupd8team/atom/ubuntu'
    distribution   node['lsb']['codename']
    components     ['main']
    keyserver      'keyserver.ubuntu.com'
    key            'EEA14886'
  end
end
