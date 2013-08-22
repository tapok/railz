# coding: utf-8
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rubocop/rake_task'

Railz::Application.load_tasks

desc 'Run RuboCop on the lib directory'
Rubocop::RakeTask.new(:rubocop) do |task|
  task.patterns = (ENV['patterns'] || []).split(',')
  # don't abort rake on failure
  task.fail_on_error = false
  puts '==Files==', task.patterns.inspect, '=========', ''
end