class MainController < ApplicationController
  def index
  	@uber_url = "uber://?action=setPickup&pickup=my_location"

  end

  def about
  end


end
