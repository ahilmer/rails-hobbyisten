class IgnoredEventsController < ApplicationController
  before_action :set_ignored_event, only: [:show, :edit, :update, :destroy]

  respond_to :json

  def index
    @ignored_events = IgnoredEvent.all
    respond_with(@ignored_events)
  end

  def show
    respond_with(@ignored_event)
  end

  def new
    @ignored_event = IgnoredEvent.new
    respond_with(@ignored_event)
  end

  def edit
  end

  def create
    @ignored_event = IgnoredEvent.new(ignored_event_params)
    @ignored_event.user_id = current_user.id

    @ignored_event.save
    respond_with(@ignored_event)
  end

  def update
    @ignored_event.update(ignored_event_params)
    respond_with(@ignored_event)
  end

  def destroy
    @ignored_event.destroy
    respond_with(@ignored_event)
  end

  private
    def set_ignored_event
      @ignored_event = IgnoredEvent.find(params[:id])
    end

    def ignored_event_params
      params.require(:ignored_event).permit(:event_id)

    end
end
