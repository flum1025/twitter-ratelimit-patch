# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "twitter/ratelimit/patch/version"

Gem::Specification.new do |spec|
  spec.name          = "twitter-ratelimit-patch"
  spec.version       = Twitter::Ratelimit::Patch::VERSION
  spec.authors       = ["flum1025"]
  spec.email         = ["flum.1025@gmail.com"]

  spec.summary       = %q{Patch for Twitter gem}
  spec.description   = %q{Get rate limit from header}
  spec.homepage      = "https://github.com/flum1025/twitter-ratelimit-patch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "twitter", '~> 6.1.0'
end
