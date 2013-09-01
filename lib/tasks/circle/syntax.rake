# coding: utf-8
require 'rubocop/rake_task'

desc 'Run RuboCop on the project directory'
Rubocop::RakeTask.new(:syntax) do |task|
  task.patterns = (ENV['PATTERNS'] || []).split(',')
  # don't abort rake on failure
  task.fail_on_error = false
  puts '==Files==', task.patterns.inspect, '=========', ''
end