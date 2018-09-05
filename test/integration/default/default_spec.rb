def gui_command(cmd)
  case os[:family]
  when 'ubuntu'
    cmd = "xvfb-run #{cmd}"
  end
  command(cmd)
end

describe gui_command('atom -v') do
  its(:exit_status) { should eq 0 }
  its(:stderr) { should be_empty }
end
