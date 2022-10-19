require 'gem2deb/rake/testtask'

Gem2Deb::Rake::TestTask.new(:spec) do |spec|
  spec.libs << "lib"
  spec.ruby_opts << "-r./spec/spec_helper"
  spec.warning = !!$VERBOSE
  spec.pattern = FileList['spec/**/*_spec.rb'] - FileList['spec/lexers_spec.rb']
end

task :default => :spec
