module MixRailsAlbums
  class Engine < ::Rails::Engine
    
    config.generators do |g|                                                               
      g.test_framework :rspec
      g.integration_tool :rspec
    end

    def navigation
      if defined? Admix
        Admix::Navigation::NavBar.post_menu do
          Admix::Navigation::NavBar.find(:content) do |menu|
            menu.submenu do |submenu|
              submenu.key   = :albums
              submenu.title = I18n.t('albums.albums')
              submenu.url   = 'admix_albums_url'
            end
          end
        end
      end
    end

  end
end
