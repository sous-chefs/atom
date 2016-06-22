
def install_atom_apm(pkg)
  ChefSpec::Matchers::ResourceMatcher.new(:atom_apm, :install, pkg)
end
