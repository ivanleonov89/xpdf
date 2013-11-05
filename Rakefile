require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => [:check_system_dependencies, :spec]

task :check_system_dependencies do
  load File.join(File.dirname(__FILE__), 'script', 'check_system_dependencies')
end
