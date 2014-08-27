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
  class Resource::APM < Resource
    identity_attr :name

    def initialize(name, run_context = nil)
      # Set the resource name and provider
      @resource_name = :apm
      @provider = Provider::APM

      # Set default action and allowed actions
      @action = :install
      @allowed_actions.push
    end

    def name(arg = nil)
      set_or_return(:name, arg, kind_of: String)
    end

  end
end


class Chef
  class Provider::APM < Provider
    def load_current_resource
      Chef::Log::debug("Loading current resource #{new_resource}")

      @current_resource = Resource::APM.new(new_resource.name)
      @current_resource.name(new_resource.name)
      @current_resource.config(new_resource.config)

      # if package_exists?
      #   # TODO: Seach if package exists: Leavign it for now
      # end
    end

    def action_install
      # TODO Check if package exists?
      execute "apm install #{@current_resource.name}" do
        ignore_failure true
        action :nothing
      end
    end
  end
end
