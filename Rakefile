require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: :spec

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '-c'
end

RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = ['-c .rubocop.yml']
end
