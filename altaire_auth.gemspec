$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "altaire_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "altaire_auth"
  s.version     = AltaireAuth::VERSION
  s.authors     = ["Nathan Baum"]
  s.email       = ["nathan.baum@altaire.com"]
  s.summary     = "Authentication, isn't it?"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "omniauth", "~> 1.2.0"
  s.add_dependency "omniauth-cas", "~> 1.1.0"
end
