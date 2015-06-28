class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
      @events = Event.findMyEvents(current_user)
      @hobbies = Event.findMyEventsHobbies(current_user)
      @locations = Event.findMyEventsLocations(current_user)
      @creators = Event.findMyEventsCreators(current_user)
      #@eventhobbies = EventsHobby.getEventHobbies(@events)
  end

  def show
    @event = Event.find(params[:id])
    @comments = Comment.where(:event_id => params[:id])
    @hobbies = Hobby.all
    @users_events = UsersEvent.where(:event_id => params[:id])
    @users= User.all
    @new_comment = Comment.new
  end

  def new
    @new_event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
    @users_events = UsersEvent.where(:event_id => params[:id])
    @hobbies = Hobby.all
    @users= User.all
  end

  def create
    @new_event = Event.new(event_params)
    if @new_event.save
      redirect_to event_path(@new_event)
    else
      render 'new'
    end
  end

  def update
    @event = Event.find(params[:id])
    @users_events = UsersEvent.where(:event_id => params[:id])
    @users= User.all
    if @event.update(event_params)
      redirect_to event_path(params[:id])
    else
      flash[:error] = "Somethig is wrong"
      render 'edit'
    end
  end

  def destroy
    @event.delete
    redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:title, :description, :take_place_timestamp, :explicit_location, :max_participants, :creator_id, :image, :hobby_id)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end
end
