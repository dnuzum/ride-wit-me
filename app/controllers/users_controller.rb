class UsersController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end

  def edit_description
  	user = current_user
  	user.about = params["user"]["about"]
    user.save
    redirect_to profile_path
  end

  def edit_favorite_locations
  	user = current_user
  	user.favorite = params["user"]["favorite"]
  	user.save
  	redirect_to profile_path
  end

  def share
    UserMailer.find_share(User.find(params[:id]), @current_user).deliver_now
    redirect_to profile_path
  end 
  

end
