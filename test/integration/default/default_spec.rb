case os[:family]
when 'windows'
  describe command('atom -v') do
    its(:exit_status) { should eq 0 }
    its(:stderr) { should eq '' }
  end
when 'ubuntu'
  describe apt('http://ppa.launchpad.net/webupd8team/atom/ubuntu') do
    it { should exist }
    it { should be_enabled }
  end

  describe package('atom') do
    it { should be_installed }
  end
end
