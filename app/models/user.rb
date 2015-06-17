class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
 mount_uploader :image, UserUploader

 has_many :users_hobbies
 has_many :hobbies, :through => :users_hobbies

 has_many :users_locations
 has_many :locations, :through => :users_locations


 has_many :users_events
 has_many :events, :through => :users_events

 has_many :ignored_events
 has_many :rejected_events, :through => :ignored_events, :source => :event
 has_many :events, :through => :users_events


end
