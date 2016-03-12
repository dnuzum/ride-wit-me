class User < ActiveRecord::Base
  belongs_to_and_has_many :locations

	def set_password_reset
  # this will ensure users with duplicate codes
  self.reset_code = loop do 
    code = SecureRandom.urlsafe_base64
    break code unless User.exists?(reset_code: code)
  end
  # set the expiration date with some handy date methods
  self.expires_at = 4.hours.from_now
  self.save!
	end
	
end
