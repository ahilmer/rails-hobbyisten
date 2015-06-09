class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => :User, :foreign_key => 'creator_id', :dependent => :destroy
  belongs_to :location

  has_many :events_hobbies
  has_many :hobbies, :through => :events_hobbies

  has_many :users_events
  has_many :users, :through => :users_events

end
