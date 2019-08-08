#
# Author:: Mark Gibbons
# Copyright:: Copyright (c) 2018 Mark Gibbons
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

home = ENV['HOME']

directory "#{home}/.atom" do
  recursive true
end

file "#{home}/.atom/config.cson" do
  action :create_if_missing
  content '"*":
  core:
    telemetryConsent: "no"
  welcome:
    showOnStartup: false'
end

atom_apm 'linter'
atom_apm 'linter-rubocop'
atom_apm 'linter-ui-default'
atom_apm 'uninstall linter-rubocop' do
  plugin 'linter-rubocop'
  action :uninstall
end

atom_apm 'disable linter' do
  plugin 'linter'
  action :disable
end

atom_apm 'disable linter-ui-default' do
  plugin 'linter-ui-default'
  action :disable
end
atom_apm 'enable linter-ui-default' do
  plugin 'linter-ui-default'
  action :enable
end
