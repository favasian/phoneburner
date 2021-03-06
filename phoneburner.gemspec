# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phoneburner/version'

Gem::Specification.new do |spec|
  spec.name          = "phoneburner"
  spec.version       = Phoneburner::VERSION
  spec.authors       = ["Dennis Vaughn"]
  spec.email         = ["dennis@rigpasolutions.com"]
  spec.summary       = %q{API for PhoneBurner.com}
  spec.description   = %q{API for PhoneBurner.com}
  spec.homepage      = "https://github.com/dennis27/phoneburner"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "1.8.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
