class Location < ActiveRecord::Base
	has_and_belongs_to_many :users
  attr_accesible :address, :lat, :long
  geocoded_by :address
  after_validation :geocoded, :if => :address_changed?

end
