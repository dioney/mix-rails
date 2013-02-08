module MixRailsWriter
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
              submenu.key   = :news
              submenu.title = I18n.t 'news.news'
              submenu.url   = 'admix_news_index_url'
            end
          end
        end
      end
    end

  end
end
