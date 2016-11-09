# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'accent_to_ascii/version'

Gem::Specification.new do |spec|
  spec.name          = "accent_to_ascii"
  spec.version       = AccentToAscii::VERSION
  spec.authors       = ["uniEagle"]
  spec.email         = ["unieagle@gmail.com"]

  spec.summary       = %q{Rubygem to replace accents in string into the corresponding ascii chars}
  spec.description   = %q{Replace the non ascii accents in a string}
  spec.homepage      = "https://github.com/unieagle/accent_to_ascii"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
