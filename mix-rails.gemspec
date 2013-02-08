# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "mix-rails"

MixRails::PROJECTS = []
MixRails::PROJECTS << "mix-rails-core"
MixRails::PROJECTS << "mix-rails-auth"
MixRails::PROJECTS << "admix"
MixRails::PROJECTS << "mix-rails-settings"
MixRails::PROJECTS << "mix-rails-wireframe"

MixRails::PROJECTS << "mix-rails-writer"
MixRails::PROJECTS << "mix-rails-albums"
MixRails::PROJECTS << "mix-rails-videos"
MixRails::PROJECTS << "mix-rails-message-board"
MixRails::PROJECTS << "mix-rails-vouchers"
MixRails::PROJECTS << "mix-rails-songs"

version = File.read(File.expand_path("../MIX_RAILS_VERSION", __FILE__)).strip

Gem::Specification.new do |gem|
  gem.name          = "mix-rails"
  gem.version       = version
  gem.authors       = ["Sadjow Leão"]
  gem.email         = ["sadjow@gmail.com"]
  gem.description   = %q{MixRails is a CMS and system based on Ruby on Rails}
  gem.summary       = %q{MixRails is a CMS and system based on Ruby on Rails}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", "~> 3.2.11"
  gem.add_dependency "default_value_for"
  gem.add_dependency "fancybox-rails", "~> 0.1.4"
  gem.add_dependency "bootstrap-sass", "~> 2.2.2.0"
  gem.add_dependency "jquery-qtip2-rails", "~> 0.4.0"

  gem.add_dependency "haml-rails"

  # Contact
  gem.add_dependency "mail_form",    "~> 1.4.0"
  gem.add_dependency "simple_form",  "~> 2.0.0"

  #ACL
  gem.add_dependency "rolify"
  gem.add_dependency "authority"
  gem.add_dependency "will_paginate"

  gem.add_dependency "friendly_id", "~> 4.0.9"

  # Core dependencies
  gem.add_dependency "mix-rails-core",      version
  gem.add_dependency "mix-rails-auth",      version
  gem.add_dependency "admix",               version
  gem.add_dependency "mix-rails-settings",  version
  gem.add_dependency "mix-rails-wireframe", version

  # Content dependencies
  gem.add_dependency "mix-rails-writer",            version
  gem.add_dependency "mix-rails-albums",            version
  gem.add_dependency "mix-rails-videos",            version
  gem.add_dependency "mix-rails-message-board",     version
  gem.add_dependency "mix-rails-vouchers",          version
  gem.add_dependency "mix-rails-songs",             version

  
 

end
