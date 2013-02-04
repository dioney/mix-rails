module MixRailsCore
  class Engine < ::Rails::Engine

    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.autoload_paths += Dir["#{config.root}/app/models/**/"]



    config.generators do |g|                                                               
      g.test_framework :rspec
      g.integration_tool :rspec
    end
    
  end
end
