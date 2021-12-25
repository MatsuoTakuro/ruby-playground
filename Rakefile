# frozen_string_literal: true

task default: %w[test]

task :test do
  ruby 'test/unittest.rb'
end

task :fmt do
  system('bundle exec rubocop -A')
end
