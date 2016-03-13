class DestinationController < ApplicationController
  def index
    if params[:search].present?
      @destination = Destination.near(params[:search], 50, :order => :distance)
    else
      @destination  = Destination.all
    end
  end

  def new
    @destination = Destitnation.new
  end

  def update

  end

  def destroy
  end

  def create
    destination = Destination.create destination_params do |d|
      d.user_id = @current_user.id 
      d.save
    end
  end

 
  private
#this is filter for when people post to page through form only allowing (:,:) <<permitted variables  
    def destination_params
      params.require(:destination).permit(:location, :time)

    end
end
