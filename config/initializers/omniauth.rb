Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],:image_size => 'large'
  #additional providers could go here e.g- google, twitter, IG
end