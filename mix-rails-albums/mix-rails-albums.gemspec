$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
version = File.read(File.expand_path('../../MIX_RAILS_VERSION', __FILE__)).strip

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mix-rails-albums"
  s.version     = version
  s.authors     = ["Sadjow Leão"]
  s.email       = ["sadjow@gmail.com"]
  s.homepage    = "https://github.com/mixinternet/mix-rails"
  s.summary     = "This is a module for albums funcionality of mix-rails."
  s.description = "This is a module for albums funcionality of mix-rails."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency 'mini_magick'
  s.add_dependency 'haml_coffee_assets'
  
  # s.add_dependency "jquery-rails"
end
