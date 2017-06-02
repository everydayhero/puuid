# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puuid/version'

Gem::Specification.new do |spec|
  spec.name          = "puuid"
  spec.version       = Puuid::VERSION
  spec.authors       = ["Marty Zalega"]
  spec.email         = ["marty.zalega@everydayhero.com"]

  spec.summary       = %q{Generates predictable UUIDs from other UUIDs}
  spec.description   = %q{This library is used to compose blueprint UUIDs from charity, campaign, et al domain objects.}
  spec.homepage      = "https://github.com/everydayhero/puuid"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
