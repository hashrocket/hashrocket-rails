# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hashrocket-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hashrocket", "Lar Van Der Jagt"]
  gem.email         = ["dev@hashrocket.com", "lar@hashrocket.com"]
  gem.description   = %q{Rails engine & generators for bootstrapping a Hashrocket project}
  gem.summary       = %q{Contains code which may have previously been copied from project to project}
  gem.homepage      = "http://hashrocket.com"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "hashrocket-rails"

  gem.add_runtime_dependency 'haml-rails'
  gem.add_runtime_dependency 'decent_exposure'

  gem.require_paths = ["lib"]
  gem.version       = Hashrocket::VERSION
end
