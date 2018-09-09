#
# Cookbook Name:: chef-atom
# debian_spec.rb
#
# Copyright (c) 2016 Doug Ireton
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

RSpec.describe 'atom::debian' do
  include_context 'ubuntu-18.04'

  it 'sets up the atom-ppa package repository' do
    expect(chef_run).to add_apt_repository('atom-ppa').with(
      uri: 'http://ppa.launchpad.net/webupd8team/atom/ubuntu'
    )
  end

  it 'installs the atom package' do
    expect(chef_run).to install_package('atom')
  end
end
