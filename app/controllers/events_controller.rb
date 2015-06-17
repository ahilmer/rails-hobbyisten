class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
      @events = Event.all
      respond_with(@events)
  end

  def show
    @event = Event.find(params[:id])
    @comments = Comment.where(:event_id => params[:id])
    @new_comment = Comment.new
    @hobbies = Hobby.all
    @events_hobbies = EventsHobby.where(:event_id => params[:id])
    @users_events = UsersEvent.where(:event_id => params[:id])
    @users= User.all
  end

  def new
    @new_comment = Comment.new
  end
  def edit
  end

  def create
    @new_comment = Comment.new
    @new_comment = Comment.new(comment_params)
    if @new_comment.save
      redirect_to event_path(params[:comment][:event_id])
    else
      render 'new'
    end
  end

  def update
    @event.update(event_params)
    respond_with(@event)
  end

  def destroy
    @event.destroy
    respond_with(@event)
  end
  
  def comment_params
    params.require(:comment).permit(:user_id, :event_id, :message)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params[:event]
    end
end
