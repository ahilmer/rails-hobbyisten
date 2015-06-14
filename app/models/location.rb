class Location < ActiveRecord::Base
  has_many :events
  has_many :users_locations
  has_many :users, :through => :users_locations

  geocoded_by :name   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

end
