class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  
  def index
    @events = Event.all
    @page_title = 'Eventos'
  end

  def show
  end
  
  private
    def set_event
      @event = Event.find(params[:id])
      @page_title = @event.title
    end
end