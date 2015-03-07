class NewsController < ApplicationController
  include ActionView::Helpers::TextHelper
  before_action :set_news, only: [:show]
  
  def index
    @news = News.all
    
    @page_title = 'Notícias'
    @page_description = 'Notícias do projeto que mostra como aplicar regras básicas de SEO numa aplicação Ruby on Rails.'
    @page_keywords    = 'Notícia, News, SEO, Ruby on Rails, exemplo, Ruby, Search'
    
    set_meta_tags :og => {
      :title    => @page_title,
      :image    => request.base_url+'/seo-rails.png',
      :description => @page_description
    }
  end

  def show
    @page_title = @news.title
    @page_description = truncate(@news.content, length: 150, omission: '...')
    @page_keywords    = @news.title.gsub ' ', ', '

    set_meta_tags :og => {
      :title    => @page_title,
      :image    => request.base_url+@news.image.url,
      :description => @page_description
    }
  end
  
  private
    def set_news
      @news = News.friendly.find(params[:id])
    end
end