require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'
 
desc 'Default: run unit tests.'
task :default => :spec
 
desc 'Test the  plugin.'
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
