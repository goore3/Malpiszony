class PublicController < ApplicationController
  layout 'application'
  
  def home
    @events = Event.all
  end
  
  def show_article
    @event = Event.find(params[:id])
  end

end
