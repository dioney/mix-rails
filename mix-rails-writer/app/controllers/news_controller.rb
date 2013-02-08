class NewsController < PostsController
  

  def index
    @news = News.published.order('date DESC').paginate(page: params[:page],per_page: 10)
  end

  def show
    @news = News.find(params[:id])
    @other_news = News.published.not_in(:id => @news.id).order('date DESC').paginate(page: params[:page], per_page: 10)
  end

end