$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contactify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contactify"
  s.version     = Contactify::VERSION
  s.authors     = ["Pablo Marti"]
  s.email       = ["pablo.marti89@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Manage your contacts with reCaptcha"
  s.description = "Build the form to get contacts on your site using reCaptcha and the Rails resources for managing your contacts"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "recaptcha", "~> 0.3.5"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "jquery-rails"
end
