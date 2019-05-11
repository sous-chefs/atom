describe command('apm ls') do
  its(:exit_status) { should eq 0 }
  its(:stderr) { should be_empty }
  its(:stdout) { should include('vim-mode') }
end
