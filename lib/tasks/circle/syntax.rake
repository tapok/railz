# coding: utf-8
require 'rubocop/rake_task'

desc 'Run RuboCop on the project directory'
Rubocop::RakeTask.new(:syntax) do |task|
  #TODO: stop if PATTERNS is empty
  patterns = (ENV['PATTERNS'] || []).split(',')
  patterns = [''] if patterns.empty?
  task.patterns = patterns
  task.fail_on_error = true
  puts '==Files==', task.patterns.inspect, '=========', ''
end