require 'rake/testtask'

task :default => :test

Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/*_test.rb']
  t.ruby_opts = ['-rubygems'] if defined? Gem
  t.ruby_opts << '-I.'
end

task :build do 
  sh 'gem build pinned.gemspec'
end

task :install do
  sh 'gem install pinned --local'
end
