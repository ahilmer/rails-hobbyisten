class UsersLocationsController < ApplicationController
  before_action :set_users_location, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @users_locations = UsersLocation.all
    respond_with(@users_locations)
  end

  def show
    respond_with(@users_location)
  end

  def new
    @users_location = UsersLocation.new
    respond_with(@users_location)
  end

  def edit
  end

  def create
    @users_location = UsersLocation.new(users_location_params)
    @users_location.save
    respond_with(@users_location)
  end

  def update
    @users_location.update(users_location_params)
    respond_with(@users_location)
  end

  def destroy
    @users_location.destroy
    respond_with(@users_location)
  end

  private
    def set_users_location
      @users_location = UsersLocation.find(params[:id])
    end

    def users_location_params
      params[:users_location]
    end
end
