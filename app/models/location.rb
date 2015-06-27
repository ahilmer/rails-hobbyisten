class Location < ActiveRecord::Base
  has_many :events
  has_many :users_locations
  has_many :users, :through => :users_locations

  geocoded_by :name
  after_validation :geocode

end
