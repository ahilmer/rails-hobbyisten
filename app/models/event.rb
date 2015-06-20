class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => :User, :foreign_key => 'creator_id', :dependent => :destroy
  belongs_to :location

  geocoded_by :explicit_location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  mount_uploader :image, EventUploader

  has_many :events_hobbies
  has_many :hobbies, :through => :events_hobbies

  has_many :users_events
  has_many :users, :through => :users_events


  def self.top5
    topEvents = UsersEvent.group(:event_id).order('count_all DESC').count.keys
    Event.find(topEvents)
  end

 def self.findSuggestions2(user)
    suggestions = []

     user.locations.each { |location|
             suggestions.push(*Event.near(location,30))
     }

     user.events.each { |event|
       suggestions.delete(event)
     }

     suggestions = suggestions.uniq
     return suggestions

  end


  def self.findMyEvents(user)
    events = []

    user.events.each { |event|
      events.push(event)
    }

    return events
  end



  def self.findMyEventsHobbies(user)
    hobbies = []

    user.events.each { |event|
      event.hobbies.each { |hobby|
        hobbies.push(hobby)
      }
    }

    hobbies = hobbies.uniq{ |x| x.id}

    return hobbies
  end



  def self.findMyEventsLocations(user)
    locations = []

    user.events.each { |event|
      locations.push(event.explicit_location)
    }

    locations = locations.uniq{ |x| x}

    return locations
  end


  def self.findMyEventsCreators(user)
    creators = []

    user.events.each { |event|
      creators.push(event.creator)
    }

    creators = creators.uniq{ |x| x.id}

    return creators
  end



end
