# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_stripe_connect_standard_onboarding/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_stripe_connect_standard_onboarding'
  s.version     = SpreeStripeConnectStandardOnboarding.version
  s.summary     = 'Spree Stripe Connect Onboarding'
  s.description = 'A spree_extension that provides ability to onboard stripe connect account'
  s.required_ruby_version = '>= 2.5'

  s.author    = 'Bluebash Spree Team'
  s.email     = 'saga@bluebash.co'
  s.homepage  = 'https://github.com/bluebash-spree-contrib/spree_stripe_connect_standard_onboarding'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.4.0'
  s.add_dependency 'rails', '~> 6.1.5', '>= 6.1.5'
  s.add_dependency 'spree', spree_version
  s.add_dependency 'spree_backend', spree_version
  # s.add_dependency 'spree_backend' # uncomment to include Admin Panel changes
  s.add_dependency 'spree_extension'
  s.add_dependency 'stripe', '~> 5.45'
  s.add_dependency 'spree_multi_vendor', '~> 2.3.0'

  s.add_dependency 'deface', '~> 1.0'

  # Test suite
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'spree_dev_tools'
  s.add_development_dependency 'byebug'
end
