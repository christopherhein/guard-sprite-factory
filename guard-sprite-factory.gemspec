$:.push File.expand_path("../lib", __FILE__)
require "guard/sprite-factory/version"

Gem::Specification.new do |s|
  s.name        = "guard-sprite-factory"
  s.version     = Guard::SpriteFactoryVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christopher Hein"]
  s.email       = ["me@christopherhein.com"]
  s.homepage    = "http://chrishein.com"
  s.summary     = %q{Guard for compiling and creating image sprites.}
  s.description = %q{guard-sprite-factory automatically regenerates images by running a rake task.}

  s.rubyforge_project = "guard-sprite-factory"

  s.add_dependency            "guard"
  s.add_dependency            "rake"
  s.add_dependency            "rails", ">= 3.1.0"
  s.add_dependency            "sprite-factory"

  s.add_development_dependency "bundler",     "~> 1.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
