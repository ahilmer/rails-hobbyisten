class UsersHobbiesController < ApplicationController
  before_action :set_users_hobby, :authenticate_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @users_hobbies = UsersHobby.all
    respond_with(@users_hobbies)
  end

  def show
    respond_with(@users_hobby)
  end

  def new
    @users_hobby = UsersHobby.new
    respond_with(@users_hobby)
  end

  def edit
  end

  def create
    @users_hobby = UsersHobby.new(users_hobby_params)
    @users_hobby.save
    respond_with(@users_hobby)
  end

  def update
    @users_hobby.update(users_hobby_params)
    respond_with(@users_hobby)
  end

  def destroy
    @users_hobby.destroy
    respond_with(@users_hobby)
  end

  private
    def set_users_hobby
      @users_hobby = UsersHobby.find(params[:id])
    end

    def users_hobby_params
      params[:users_hobby]
    end
end
