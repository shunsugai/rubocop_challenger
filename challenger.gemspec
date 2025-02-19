# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_challenger/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop_challenger'
  spec.version       = RubocopChallenger::VERSION
  spec.authors       = ['ryosuke_sato']
  spec.email         = ['r-sato@feedforce.jp']

  spec.summary       = 'Make a clean your rubocop_todo.yml with CI'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/ryz310/rubocop_challenger'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'pr_comet', '>= 0.2', '< 0.4'
  spec.add_runtime_dependency 'rainbow'
  spec.add_runtime_dependency 'rubocop'
  spec.add_runtime_dependency 'rubocop-performance'
  spec.add_runtime_dependency 'rubocop-rspec'
  spec.add_runtime_dependency 'thor'
  spec.add_runtime_dependency 'yard'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'simplecov'
end
