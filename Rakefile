require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require File.join(File.dirname(__FILE__), 'lib', 'share_me', 'version')

PKG_BUILD     = ENV['PKG_BUILD'] ? '.' + ENV['PKG_BUILD'] : ''
PKG_NAME      = 'share-me'
PKG_VERSION   = ShareMe::Version + PKG_BUILD
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

RELEASE_NAME  = "REL #{PKG_VERSION}"


desc 'Default: run unit tests.'
task :default => :test

desc 'Test the share_me plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the share_me plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ShareMe'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

dist_dirs = [ "lib", "test", "examples" ]

spec = Gem::Specification.new do |s|
	s.platform = Gem::Platform::RUBY
	s.name = PKG_NAME
	s.version = PKG_VERSION
	s.summary = "Share your webpage on social sites"
	s.description = %q{Using the share_me plugin, you can share your web page on social sites}

	s.files = [ "Rakefile","MIT-LICENSE", "install.rb", "README", "CHANGELOG" ]
	dist_dirs.each do |dir|
		s.files = s.files + Dir.glob( "#{dir}/**/*" ).delete_if { |item| item.include?( "\.svn" ) }
	end

	s.require_path = 'lib'
	s.autorequire = 'share_me'

	s.has_rdoc = true
	s.extra_rdoc_files = %w( README )
	s.rdoc_options.concat ['--main',  'README']

	s.author = "Mohammed Siddick. E"
	s.email = "siddick.mails@gmail.com"
	s.homepage = "http://siddick.github.com/"
	#s.rubyforge_project = "live_data"
end

Rake::GemPackageTask.new(spec) do |p|
	p.gem_spec = spec
	p.need_tar = true
	p.need_zip = true
end

