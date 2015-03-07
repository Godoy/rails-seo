class EventsController < ApplicationController
  include ActionView::Helpers::TextHelper
  before_action :set_event, only: [:show]
  
  def index
    @events = Event.all
    @page_title = 'Eventos'
    @page_description = 'Eventos do projeto que mostra como aplicar regras básicas de SEO numa aplicação Ruby on Rails.'
    @page_keywords    = 'Evento, Event, SEO, Ruby on Rails, exemplo, Ruby, Search'
    
    set_meta_tags :og => {
      :title    => @page_title,
      :image    => request.base_url+'/seo-rails.png',
      :description => @page_description
    }
  end

  def show
    @page_title = @event.title
    @page_description = truncate(@event.content, length: 150, omission: '...')
    @page_keywords    = @event.title.gsub ' ', ', '

    set_meta_tags :og => {
      :title    => @page_title,
      :image    => request.base_url+@event.image.url,
      :description => @page_description
    }
  end
  
  private
    def set_event
      @event = Event.friendly.find(params[:id])
    end
end