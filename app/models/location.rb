class Location < ActiveRecord::Base
  has_many :events
  has_many :users_locations
  has_many :users, :through => :users_locations
end
