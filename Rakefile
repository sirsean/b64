require 'rubygems'
require 'rspec/core/rake_task'
require "#{File.dirname(__FILE__)}/lib/b64/version"

task :default => :spec
RSpec::Core::RakeTask.new(:spec)

desc 'Run all rspec tests with rcov (1.8 only)'
RSpec::Core::RakeTask.new(:rcov) do |t|
  t.rcov_opts =  %q[--exclude "spec,gems"]
  t.rcov = true
end

namespace :gem do
  task :build do
    puts `yard`
    puts `gem build b64.gemspec`
  end

  task :install do
    puts `gem install b64-#{B64::VERSION}.gem`
  end

  task :uninstall do
    puts `gem uninstall b64`
  end
end

desc 'Build yard documentation'
task :yard do
  puts `yard`
  `open doc/index.html`
end
