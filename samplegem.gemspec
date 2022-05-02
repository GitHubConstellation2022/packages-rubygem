# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'samplegem'
  s.version     = '1.0.0'
  s.summary     = 'This is a sample gem to understand GitHub Packages for RubyGems registry!'
  s.description = 'This is a sample gem to understand GitHub Packages for RubyGems registry!'
  s.authors     = ['dhruvsaraiya']
  s.email       = 'octocat@github.com'
  s.files       = ['lib/sample_gem.rb']
  s.homepage    =
    'https://rubygems.pkg.github.com/dhruvsaraiya/sample-gem'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.5.0'
  s.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/dhruvsaraiya'
end
