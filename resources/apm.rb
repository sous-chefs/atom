#
# Cookbook Name:: atom
# Resource:: apm
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

property :plugin, String, name_attribute: true
resource_name :atom_apm
default_action :install

action_class do
  def whyrun_supportd?
    true
  end

  include AtomApmHelper
end

action :disable do
  converge_by("Disable atom plugin #{new_resource.plugin}") do
    shell_out!("#{apm} disable #{new_resource.plugin}")
  end if enabled?(new_resource.plugin)
end

action :enable do
  converge_by("Enable atom plugin #{new_resource.plugin}") do
    shell_out!("#{apm} enable #{new_resource.plugin}")
  end if disabled?(new_resource.plugin)
end

action :install do
  converge_by("Install atom plugin #{new_resource.plugin}") do
    shell_out!("#{apm} install #{new_resource.plugin}")
  end unless installed?(new_resource.plugin)
end

action :upgrade do
  converge_by("Upgrade atom plugin #{new_resource.plugin}") do
    shell_out!("#{apm} upgrade #{@new_resource.plugin}")
  end unless upgrade_available?(new_resource.plugin)
end

action :uninstall do
  converge_by("Uninstall atom plugin #{new_resource.plugin}") do
    shell_out!("#{apm} uninstall #{@new_resource.plugin}")
  end if installed?(new_resource.plugin)
end
