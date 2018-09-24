$:.push File.expand_path("../lib", __FILE__)
require 'version'

Gem::Specification.new do |s|
  s.name         = 'method_template'
  s.files        = ['lib/method_template.rb']
  s.version      = MethodTemplate::VERSION
  s.license      = 'MIT'
  s.summary      = 'Ruby macro for defining hook methods to be overriden'
  s.description  = 'Ruby macro for defining hook methods to be overriden'
  s.author       = 'Gregory Kenenitz'
  s.required_ruby_version = '>= 2.5.1'
  s.homepage     = 'https://github.com/aceofbassgreg/method_template'
end
