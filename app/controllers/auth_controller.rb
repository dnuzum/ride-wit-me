class AuthController < ApplicationController
		def callback
    provider_user = request.env['omniauth.auth']
	
    user = User.find_or_create_by(provider_id: provider_user['uid'], provider: params[:provider]) do |u|
      u.provider_hash = provider_user['credentials']['token']
      u.name = provider_user['info']['name']
      u.email = provider_user['info']['email']
      u.picture = provider_user['info']['image']

    end

    session[:user_id] = user.id
    redirect_to root_path
    
    # render json: provider_user
  end

	def logout
    session[:user_id] = nil
    redirect_to root_path
  end


  def failure
    #TODO: display error page
    render plain: "this is a failure"
  end

end

