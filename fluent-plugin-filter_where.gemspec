# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require_relative 'lib/fluent/plugin/filter_where/version'

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-filter_where"
  gem.version     = Fluent::FilterWhere::VERSION
  gem.authors     = ["Naotoshi Seo"]
  gem.email       = "sonots@gmail.com"
  gem.homepage    = "https://github.com/sonots/fluent-plugin-filter_where"
  gem.description = "Fluentd plugin to filter records with SQL-like WHERE statements"
  gem.summary     = gem.description
  gem.licenses    = ["MIT"]
  gem.has_rdoc    = false

  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd"

  gem.add_development_dependency "racc"
  gem.add_development_dependency "rexical"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "pry-nav"
  gem.add_development_dependency "test-unit"
  gem.add_development_dependency "test-unit-rr"
  gem.add_development_dependency "timecop"
end
