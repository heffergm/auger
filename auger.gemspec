# -*- encoding: utf-8 -*-
require File.expand_path('../lib/auger/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ric Lister", "Grant Heffernan"]
  gem.email         = ["rlister@gmail.com", "heffergm@gmail.com"]
  gem.description   = %q{Auger: test-driven ops}
  gem.summary       = %q{App && infrastructure testing DSL}
  gem.homepage      = "https://github.com/brewster/auger"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "auger"
  gem.require_paths = ["lib"]
  gem.version       = Auger::VERSION

  # dependencies
  gem.add_dependency('json'          , '>= 1.7.3')
  gem.add_dependency('redis'         , '>= 3.0.1')
  gem.add_dependency('net-dns'       , '>= 0.7.1')
  gem.add_dependency('rainbow'       , '>=1.1.4')
  gem.add_dependency('host_range'    , '>=0.0.1')
end

