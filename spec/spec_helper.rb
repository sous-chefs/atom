require_relative '../libraries/apm_helper'
require 'rspec'
include RSpec
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end

module FakeNode
  def platform_family?(_type)
    false
  end
end
