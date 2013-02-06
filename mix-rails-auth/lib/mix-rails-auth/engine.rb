module MixRailsAuth
  class Engine < ::Rails::Engine
    
    config.generators do |g|                                                               
      g.test_framework :rspec
      g.integration_tool :rspec
    end

    def navigation
      if defined? Admix
        Admix::Navigation::NavBar.post_menu do
          Admix::Navigation::NavBar.find(:general) do |menu|
            menu.submenu do |submenu|
              submenu.key   = :users
              submenu.title = I18n.t 'users.users'
              submenu.url   = 'admix_users_url'

              submenu.instance_eval do
                def can_render?(current_user)
                  current_user.has_role? :admin
                end
              end

            end
          end
        end
      end
    end

  end
end
