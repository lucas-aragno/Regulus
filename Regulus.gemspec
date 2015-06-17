# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Regulus/version'

Gem::Specification.new do |spec|
  spec.name          = "Regulus"
  spec.version       = Regulus::VERSION
  spec.authors       = ["laragno"]
  spec.email         = ["lucas.aragno157@gmail.com"]
  spec.summary       = %q{Gem to avoid use awful regex}
  spec.description   = %q{Gem to avoid use awfull regexs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
