#
# Cookbook Name:: atom
# HWRP:: apm
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

class Chef
  class Resource
    # Resource class for resource `atom_apm`
    class AtomApm < Chef::Resource
      resource_name :atom_apm

      default_action :install
      allowed_actions :install, :uninstall, :upgrade, :enable, :disable

      def installed?
        packages = shell_out('apm list --installed --bare').stdout.split("\n")
        packages.any? { |x| x.index("#{@name}@") == 0 }
      end
    end
  end
end

class Chef
  class Provider
    # Provider class for resource `atom_apm`
    class AtomApm < Chef::Provider
      provides :atom_apm

      def load_current_resource
        Chef::Log.debug("Loading current resource #{new_resource}")

        @current_resource = Chef::Resource::AtomApm.new(new_resource.name)
        @current_resource.name(new_resource.name)

        @current_resource
      end

      def action_install
        shell_out "apm install #{@current_resource.name}" unless @current_resource.installed?
      end

      def action_upgrade
        shell_out "apm upgrade #{@current_resource.name}"
      end

      def action_uninstall
        shell_out "apm uninstall #{@current_resource.name}" if @current_resource.installed?
      end

      def action_enable
        shell_out "apm enable #{@current_resource.name}" if @current_resource.installed?
      end

      def action_disable
        shell_out "apm disable #{@current_resource.name}" if @current_resource.installed?
      end
    end
  end
end
