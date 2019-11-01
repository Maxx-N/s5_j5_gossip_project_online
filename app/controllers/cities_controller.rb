class CitiesController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @user_city = City.all.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
