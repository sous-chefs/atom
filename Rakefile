require 'rubygems'
require 'bundler/setup'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

# Immediately sync all stdout so that tools like buildbot can
# immediately load in the output.
$stdout.sync = true
$stderr.sync = true
#
# # Change to the directory of this file.
Dir.chdir(File.expand_path('../', __FILE__))
