# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pagerdupi/version'

Gem::Specification.new do |spec|
  spec.name          = "pagerdupi"
  spec.version       = Pagerdupi::VERSION
  spec.authors       = ["koudaiii"]
  spec.email         = ["cs006061@gmail.com"]

  spec.summary       = %q{pagerduty + api = pagerdupi}
  spec.description   = %q{REST API Client for pagerduty v2}
  spec.homepage      = "https://github.com/koudaiii/pagerdupi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
