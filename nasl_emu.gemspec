# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "nasl_emu"
  spec.version       = File.exist?('VERSION') ? File.read('VERSION') : ""
  spec.authors       = ["Vlatko Kosturjak"]
  spec.email         = ["kost@linux.hr"]

  spec.summary       = %q{Implementation of NASL specific functions}
  spec.description   = %q{This is basic implementation of NASL specific functions in order to speed up PoC/exploit development.}
  spec.homepage      = "https://github.com/kost/nasl_emu-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "bundler", "=> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
