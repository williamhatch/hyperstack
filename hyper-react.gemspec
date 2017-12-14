# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib/', __FILE__)
require 'reactive-ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'hyper-react'
  spec.version       = React::VERSION

  spec.authors       = ['David Chang', 'Adam Jahn', 'Mitch VanDuyn', 'Jan Biedermann']
  spec.email         = ['mitch@catprint.com', 'jan@kursator.com']
  spec.homepage      = 'http://ruby-hyperloop.org'
  spec.summary       = 'Opal Ruby wrapper of React.js library.'
  spec.license       = 'MIT'
  spec.description   = 'Write React UI components in pure Ruby.'
  # spec.metadata      = {
  #   "homepage_uri" => 'http://ruby-hyperloop.org',
  #   "source_code_uri" => 'https://github.com/ruby-hyperloop/hyper-component'
  # }

  spec.files         = `git ls-files`.split("\n").reject { |f| f.match(%r{^(gemfiles|spec)/}) }
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ['lib']

  spec.add_dependency 'hyper-store', React::VERSION
  spec.add_dependency 'opal', '~> 0.10.5'
  spec.add_dependency 'opal-activesupport', '~> 0.3.0'

  spec.add_development_dependency 'chromedriver-helper'
  spec.add_development_dependency 'debase'
  spec.add_development_dependency 'listen'
  spec.add_development_dependency 'mime-types'
  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'opal-rails', '~> 0.9.3'
  spec.add_development_dependency 'opal-rspec'
  spec.add_development_dependency 'rails', '>= 4.0.0'
  spec.add_development_dependency 'rails-controller-testing'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'react-rails', '>= 2.3.0', '< 2.5.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'mini_racer', '~> 0.1.14'
  spec.add_development_dependency 'timecop', '~> 0.8.1'
end
