require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rubocop/rake_task'
#require 'cuke_sniffer'
require 'flog'
require 'flay'
require 'reek/rake/task'

desc 'Run rubocop'
task :rubocop do
  RuboCop::RakeTask.new
end

desc 'Run cuke_sniffer'
task :cuke_sniffer do
  cuke_sniffer = CukeSniffer::CLI.new
  cuke_sniffer.output_html('cuke_sniffer_output.html')
end

Reek::Rake::Task.new(:reek) do |t|
  t.fail_on_error = false
  t.source_files = '*.rb'
end

desc 'Run reek'
task :reek do
  ruby %Q{-S reek "#{Dir.pwd}"}
end

desc 'Run flay'
task :flay do
  ruby %Q{-S flay "#{Dir.pwd}"}
end

desc 'Run flog'
task :flog do
  ruby %Q{-S flog "#{Dir.pwd}"}
end

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
  end

Cucumber::Rake::Task.new(:clt_registration) do |t|
  t.profile = 'clt_registration'
end

Cucumber::Rake::Task.new(:ci_run) do |t|
  t.profile = 'ci_run'
end

task default: :features
