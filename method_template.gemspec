$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name         = 'method_template'
  s.version      = GemName::VERSION
  s.license      = 'MIT'
  s.summary      = 'Ruby macro for defining hook methods to be overriden'
  s.description  = 'Ruby macro for defining hook methods to be overriden'
  s.author       = 'Gregory Kenenitz'
  s.required_ruby_version = '>= 2.6.0'
end
