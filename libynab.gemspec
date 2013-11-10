# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libynab/version'

Gem::Specification.new do |spec|
  spec.name          = "libynab"
  spec.version       = Libynab::VERSION
  spec.authors       = ["Matt Hink"]
  spec.email         = ["mhink1103@gmail.com"]
  spec.license       = "MIT"
  spec.summary       = "API for interaction with YNAB budget files."

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
