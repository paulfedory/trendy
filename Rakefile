require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'
 
desc 'Default: run unit tests.'
task :default => :spec
 
desc 'Test the plugin.'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'lib'
  t.verbose = true
end


desc 'Generate documentation for the trendy plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Trendy'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "trendy"
    gemspec.summary = "A wrapper for the Twitter API that gets trends."
    gemspec.description = "A wrapper for the Twitter API that gets trends."
    gemspec.homepage = "http://github.com/paulfedory/trendy"
    gemspec.authors = ["Paul Fedory"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
