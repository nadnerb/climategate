# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'climategate/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_dependency 'mechanize', '~> 2.7'
  spec.add_dependency 'dotenv', '~> 0.8'
  spec.authors = ["Brendan Spinks", "Stu Liston"]
  spec.description = %q{Code climate info}
  spec.email = ['brendanspinks@gmail.com']
  spec.files = %w(LICENSE.md README.md climategate.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")
  spec.homepage = 'https://github.com/nadnerb/climategate'
  spec.licenses = ['MIT']
  spec.name = 'climategate'
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = spec.description
  spec.test_files = Dir.glob("spec/**/*")
  spec.version = Climategate::VERSION
end

