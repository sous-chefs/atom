require 'rubygems'
require 'bundler/setup'
require 'rubocop/rake_task'
require 'foodcritic'
require 'stove/rake_task'

task 'default' => [:foodcritic]
# FoodCritic::Rake::LintTask.new
FoodCritic::Rake::LintTask.new do |t|
  t.options = { 'fail_tags' => ['correctness'] }
end
RuboCop::RakeTask.new

# Add Stove task
Stove::RakeTask.new

# Immediately sync all stdout so that tools like buildbot can
# immediately load in the output.
$stdout.sync = true
$stderr.sync = true
#
# # Change to the directory of this file.
Dir.chdir(File.expand_path('../', __FILE__))
