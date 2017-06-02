require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Tag and push release"
task "release:tag" => ["release:guard_clean", "release:source_control_push"]
