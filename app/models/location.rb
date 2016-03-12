class Location < ActiveRecord::Base
	belongs_to_and_has_many :users
end
