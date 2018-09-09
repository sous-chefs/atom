#
# Cookbook Name:: chef-atom
# mac_os_x_spec.rb
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

require 'spec_helper'

RSpec.describe 'atom::packages' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(
      platform: 'ubuntu',
      version: '18.04',
      file_cache_path: '/var/chef/cache'
    ) do |node|
      node.set['atom']['packages'] = %w(markdown-preview vim-mode)
    end.converge(described_recipe)
  end

  it 'includes the atom recipe' do
    expect(chef_run).to include_recipe('atom')
  end

  it 'installs the specified atom packages' do
    expect(chef_run).to install_atom_apm('markdown-preview')
    expect(chef_run).to install_atom_apm('vim-mode')
  end
end
