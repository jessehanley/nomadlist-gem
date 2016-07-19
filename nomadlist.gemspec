# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nomadlist/version'

Gem::Specification.new do |spec|
  spec.name          = "nomadlist"
  spec.version       = Nomadlist::VERSION
  spec.authors       = ["Jesse Hanley"]
  spec.email         = ["jesse@jessehanley.com"]

  spec.summary       = %q{Gem to wrap Nomadlist's API}
  spec.description   = %q{Give your Rails app access to the best cities to live and work remotely for digital nomads. Includes: cost of living, internet speed, weather and other awesome metrics.}
  spec.homepage      = "https://github.com/jessehanley/nomadlist-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"

  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "faraday"
  spec.add_dependency "json"

end
