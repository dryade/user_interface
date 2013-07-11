$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "user_interface/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "user_interface"
  s.version     = UserInterface::VERSION
  s.authors     = ["Marc Florisson", "Luc Donnet", "Alban Peignier"]
  s.email       = ["mflorisson@cityway.fr", "ldonnet@cityway.fr", "alban@tryphon.eu"]      
  s.homepage    = "https://github.com/dryade/user-interface.git"
  s.summary     = "User Interface for all our web site."
  s.description = "User Interface for all our web site."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.1.0"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
