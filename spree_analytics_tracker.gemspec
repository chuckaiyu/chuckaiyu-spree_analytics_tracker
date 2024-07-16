# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_analytics_tracker/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_analytics_tracker'
  s.version     = SpreeAnalyticsTracker::VERSION
  s.summary     = "Spree Commerce Analytics Tracker Extension"
  s.required_ruby_version = '>= 3.0'

  s.author    = 'Chuck'
  s.email     = 'chuckaiyu@gmail.com.com'
  s.homepage  = 'https://github.com/chuckaiyu/spree_analytics_tracker'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree', '>= 4.8.3'
  s.add_dependency 'spree_extension'
  s.add_dependency 'deface'

  s.add_development_dependency 'spree_dev_tools'
end
