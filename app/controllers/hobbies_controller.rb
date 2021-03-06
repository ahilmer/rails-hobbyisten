class HobbiesController < ApplicationController
  before_action :set_hobby, :authenticate_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hobbies = Hobby.all
    respond_with(@hobbies)
  end

  def show
    respond_with(@hobby)
  end

  def new
    @hobby = Hobby.new
    respond_with(@hobby)
  end

  def edit
  end

  def create
    @hobby = Hobby.new(hobby_params)
    @hobby.save
    respond_with(@hobby)
  end

  def update
    @hobby.update(hobby_params)
    respond_with(@hobby)
  end

  def destroy
    @hobby.destroy
    respond_with(@hobby)
  end

  private
    def set_hobby
      @hobby = Hobby.find(params[:id])
    end

    def hobby_params
      params[:hobby]
    end
end
