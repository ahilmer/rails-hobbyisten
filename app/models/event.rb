class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => :User, :foreign_key => 'creator_id', :dependent => :destroy
  belongs_to :location

  has_many :events_hobbies
  has_many :hobbies, :through => :events_hobbies

  has_many :users_events
  has_many :users, :through => :users_events

  def self.findSuggestions(user)
    suggestions = []

     user.hobbies.each { |hobby|
             suggestions.push(*hobby.events)
     }
     user.locations.each { |location|
             suggestions.push(*location.events)
     }

     user.rejected_events.each { |event|
             suggestions.delete(event)
     }

     user.events.each { |event|
             suggestions.delete(event)
     }

     suggestions = suggestions.uniq
     return suggestions

  end

end
