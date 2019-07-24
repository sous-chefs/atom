#
# Cookbook:: chef-atom
# support/platforms.rb
#
# Copyright:: (c) 2016 Doug Ireton
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

RSpec.shared_context 'windows-2016' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'windows',
      version: '2016',
      file_cache_path: 'c:/chef/cache/'
    ).converge(described_recipe)
  end
end

RSpec.shared_context 'mac_os_x-10.13' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'mac_os_x',
      version: '10.13',
      file_cache_path: '/var/chef/cache/'
    ).converge(described_recipe)
  end

  before(:example) do
    # this stub is needed for homebrew specs
    stub_command('which git').and_return('/usr/local/bin/git')
  end
end

RSpec.shared_context 'ubuntu-18.04' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'ubuntu',
      version: '18.04',
      file_cache_path: '/var/chef/cache'
    ).converge(described_recipe)
  end
end
