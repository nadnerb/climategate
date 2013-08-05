# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'climategate/version'

Gem::Specification.new do |gem|
  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_dependency 'mechanize', '~> 2.7'
  gem.add_dependency 'dotenv', '~> 0.8'
  gem.add_dependency 'activesupport', '~> 4.0.0'
  gem.authors = ["Brendan Spinks", "Stu Liston"]
  gem.description = %q{Code climate info}
  gem.email = ['brendanspinks@gmail.com']
  gem.files = %w(LICENSE.md README.md climategate.gemspec)
  gem.files += Dir.glob("lib/**/*.rb")
  gem.files += Dir.glob("spec/**/*")
  gem.homepage = 'https://github.com/nadnerb/climategate'
  gem.licenses = ['MIT']
  gem.name = 'climategate'
  gem.require_path = 'lib'
  gem.required_rubygems_version = '>= 1.3.5'
  gem.summary = gem.description
  gem.test_files = Dir.glob("spec/**/*")
  gem.version = Climategate::VERSION
end

