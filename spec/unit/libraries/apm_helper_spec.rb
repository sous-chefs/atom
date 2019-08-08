require 'rspec'
require 'ostruct'
require 'chef/mixin/shell_out'
include Chef::Mixin::ShellOut
include AtomApmHelper
include FakeNode

RSpec.describe 'package is installed' do
  before(:each) do
    mock_apm_list(installed_out)
    mock_platform_family(false)
    @installed = installed?('linter')
  end
  it 'installed? returns true' do
    expect(@installed).to be true
  end
end

RSpec.describe 'package is not installed' do
  before(:each) do
    mock_apm_list(not_installed_out)
    mock_platform_family(false)
    @installed = installed?('linter')
  end
  it 'installed? returns false' do
    expect(@installed).to be false
  end
end

RSpec.describe 'upgrade is available' do
  before(:each) do
    mock_apm_upgrade(update_available_out)
    mock_platform_family(false)
    @upgrade = upgrade_available?('linter')
  end
  it 'upgrade_available? returns true' do
    expect(@upgrade).to be true
  end
end

RSpec.describe 'package is disabled' do
  before(:each) do
    mock_apm_list(installed_out)
    mock_platform_family(false)
    @disabled = disabled?('linter-ui-default')
  end
  it 'disabled? returns true' do
    expect(@disabled).to be true
  end
end

RSpec.describe 'package is enabled' do
  before(:each) do
    mock_apm_list(installed_out)
    mock_platform_family(false)
    @enabled = enabled?('linter')
  end
  it 'enabled? returns true' do
    expect(@enabled).to be true
  end
end

def mock_apm_list(output)
  allow(self).to receive(:shell_out).with('apm list').and_return(output)
end

def mock_platform_family(value)
  allow(self).to receive(:platform_family?).and_return(value)
end

def mock_apm_upgrade(output)
  allow(self).to receive(:shell_out).with('apm upgrade -l linter').and_return(output)
end

def update_available_out
  OpenStruct.new(
    stdout:
'Package Updates Available (1)
└── linter 2.1.0 -> 2.2.0'
  )
end

def update_not_available_out
  OpenStruct.new(
    stdout:
'Package Updates Available (0)'
  )
end

def installed_out
  OpenStruct.new(
    stdout:
  '├── busy-signal@1.4.3
   ├── intentions@1.1.5
   ├── linter@2.2.0
   ├── linter-ui-default@1.6.10 (disabled)'
  )
end

def not_installed_out
  OpenStruct.new(
    stdout:
  '├── busy-signal@1.4.3
   ├── intentions@1.1.5
   ├── linter-ui-default@1.6.10'
  )
end
