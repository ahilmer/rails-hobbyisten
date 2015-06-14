class EventController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @comments = Comment.where(:event_id => params[:id])
  end
  
end
