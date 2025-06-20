# frozen_string_literal: true

$LOAD_PATH.unshift(::File.join(::File.dirname(__FILE__), 'lib'))

require 'emailable/version'

Gem::Specification.new do |s|
  s.name = 'emailable'
  s.version = Emailable::VERSION
  s.summary = 'Ruby bindings for the Emailable API'
  s.description = 'Email Verification that’s astonishingly easy and low-cost. '\
                  'See https://emailable.com for details.'
  s.homepage = 'https://emailable.com'
  s.author = 'Emailable'
  s.email = 'support@emailable.com'
  s.license = 'MIT'
  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/emailable/emailable-ruby/issues',
    'documentation_uri' => 'https://emailable.com/docs/api/?ruby',
    'source_code_uri' => 'https://github.com/emailable/emailable-ruby'
  }

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map do |f|
    ::File.basename(f)
  end
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'amazing_print'
  s.add_development_dependency 'minitest', '~> 5.0'
  s.add_development_dependency 'minitest-reporters'
  s.add_development_dependency 'activemodel'
  s.add_development_dependency 'rubocop-cache-ventures'
end
