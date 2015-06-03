class EventsHobbiesController < ApplicationController
  before_action :set_events_hobby, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @events_hobbies = EventsHobby.all
    respond_with(@events_hobbies)
  end

  def show
    respond_with(@events_hobby)
  end

  def new
    @events_hobby = EventsHobby.new
    respond_with(@events_hobby)
  end

  def edit
  end

  def create
    @events_hobby = EventsHobby.new(events_hobby_params)
    @events_hobby.save
    respond_with(@events_hobby)
  end

  def update
    @events_hobby.update(events_hobby_params)
    respond_with(@events_hobby)
  end

  def destroy
    @events_hobby.destroy
    respond_with(@events_hobby)
  end

  private
    def set_events_hobby
      @events_hobby = EventsHobby.find(params[:id])
    end

    def events_hobby_params
      params[:events_hobby]
    end
end
