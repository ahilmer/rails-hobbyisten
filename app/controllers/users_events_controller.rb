class UsersEventsController < ApplicationController
  before_action :set_users_event, :authenticate_user!, only: [:show, :edit, :update, :destroy]
  respond_to :json

  def index
    @users_events = UsersEvent.all
  end

  def show
  end

  def new
    @users_event = UsersEvent.new
    respond_with(@users_event)
  end

  def edit
  end

  def create
    @users_event = UsersEvent.new(users_event_params)
    @users_event.user_id = current_user.id
    @users_event.save
    respond_with(@users_event)
  end

  def update
    @users_event.update(users_event_params)
    respond_with(@users_event)
  end

  def destroy
    @users_event.destroy
    respond_with(@users_event)
  end

  private
    def set_users_event
      @users_event = UsersEvent.find(params[:id])
    end

    def users_event_params
      params.require(:users_event).permit(:event_id)
    end
end
