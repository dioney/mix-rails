module MixRailsSongs
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
              submenu.key   = :songs
              submenu.title = I18n.t 'songs.songs'
              submenu.url   = 'admix_songs_url'
            end
          end
        end
      end
    end

  end
end
