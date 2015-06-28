class Hobby < ActiveRecord::Base
  #has_many :events_hobbies
  has_many :events #, :through => :events_hobbies

  has_many :users_hobbies
  has_many :users, :through => :users_hobbies


end
