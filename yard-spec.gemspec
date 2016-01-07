# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yard/spec/version'

Gem::Specification.new do |spec|
  spec.name = 'yard-spec'
  spec.version = YARD::Spec::VERSION
  spec.authors = ['Kyle Whittington']
  spec.email = ['kyle.thomas.whittington@gmail.com']

  spec.summary = 'YARD plugin to include unit specs in output.'
  spec.description = 'YARD plugin to include unit specs in output.'
  spec.homepage = 'https://github.com/kWhittington/yard-spec'
  spec.license = 'GPL-3.0'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    fail 'RubyGems 2.0 or newer is required '\
         'to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = 'bin'
  spec.executables = %w(console)

  spec.require_paths = ['lib']
  spec.has_rdoc = 'yard'

  spec.add_runtime_dependency 'activemodel', '>= 4.0'
  spec.add_runtime_dependency 'activesupport', '>= 4.0'
  spec.add_runtime_dependency 'yard', '~> 0.8'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'faker', '~> 1'
  spec.add_development_dependency 'pry', '0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
