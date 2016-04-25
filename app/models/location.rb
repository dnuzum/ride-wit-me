class Location < ActiveRecord::Base
	has_and_belongs_to_many :users
  geocoded_by :full_street_address
  after_validation :geocode
  
end
