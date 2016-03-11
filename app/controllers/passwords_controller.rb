class PasswordsController < ApplicationController
  def new
  end

  def edit
  end

  def create
  user = User.find_by_email(params[:email])
	  if user
	    user.set_password_reset
	    UserMailer.password_reset(user).deliver_now
	  end
	  flash[:warning] = 'Password reset sent if email exists'
	  redirect_to root_path
	end

	def edit
	  @code = params[:code]
	end

	def update
	  user = User.find_by_reset_code(params[:code])
	  if user && params[:password]
	    user.update(password: params[:password], reset_code: nil, expires_at: nil)
	    flash[:success] = 'Reset successful, login!'
	    redirect_to login_path
	  else
	    flash[:danger] = 'Invalid reset code and/or password'
	    redirect_to root_path
	  end
	end

end


