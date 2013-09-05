# coding: utf-8
require 'rubocop/rake_task'

desc 'Run RuboCop on the project directory'
Rubocop::RakeTask.new(:syntax) do |task|
  patterns = (ENV['PATTERNS'] || []).split(',') << __FILE__

  task.patterns = patterns
  task.fail_on_error = true
  puts '==Files==', task.patterns.inspect, '=========', ''
end