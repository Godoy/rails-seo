class NewsController < ApplicationController
  before_action :set_news, only: [:show]
  
  def index
    @news = News.all
    
    @page_title = 'Notícias'
  end

  def show
  end
  
  private
    def set_news
      @news = News.find(params[:id])
      
      @page_title = @news.title
    end
end