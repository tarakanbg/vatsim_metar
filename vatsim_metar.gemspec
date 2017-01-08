# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vatsim_metar/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Svilen Vassilev"]
  gem.email         = ["svilen@rubystudio.net"]
  gem.description   = %q{Pulls and returns as a string the latest VATSIM metar for a particular station (ICAO code).}
  gem.summary       = %q{Pulls the latest VATSIM metar for particular station}
  gem.homepage      = "https://github.com/tarakanbg/vatsim_metar"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "vatsim_metar"
  gem.require_paths = ["lib"]
  gem.version       = VatsimMetar::VERSION
  gem.license       = 'MIT'

  gem.add_development_dependency "rspec", '~> 0'
  gem.add_development_dependency "rake", '~> 0'
  gem.add_dependency "curb", '~> 0'
end
