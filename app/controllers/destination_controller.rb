class DestinationController < ApplicationController
  def index
    @destinations = Location.all
    @destination = Location.new
  end

  def new
    @destination = Location.new
  end

  def update

  end

  def destroy
  end

  def create
    destination = Location.find_or_create_by(destination_params)
    destination.users << @current_user
    redirect_to destination_path
  end

 
  private
#this is filter for when people post to page through form only allowing (:,:) <<permitted variables  
    def destination_params
      params.require(:location).permit(:address,:time)

    end
end
