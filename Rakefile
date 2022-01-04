# frozen_string_literal: true

require 'rake/testtask'

task default: %w[test]

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*_test.rb']
end

task :fmt do
  system('bundle exec rubocop -A')
end
