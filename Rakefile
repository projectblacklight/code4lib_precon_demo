# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require 'solr_wrapper/rake_task' unless Rails.env.production?
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

desc 'Run test suite'
task :ci do
  solr_config_dir = File.join(File.dirname(__FILE__), 'solr', 'conf')

  SolrWrapper.wrap(port: '8983') do |solr|
    solr.with_collection(name: 'blacklight-core',
                         dir: solr_config_dir) do
      Rake::Task['spec'].invoke
    end
  end
end
