class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => :User, :foreign_key => 'creator_id', :dependent => :destroy
  belongs_to :location

  geocoded_by :explicit_location
  after_validation :geocode

  mount_uploader :image, EventUploader

  belongs_to :hobby
  #has_many :events_hobbies
  #has_many :hobbies, :through => :events_hobbies

  has_many :users_events
  has_many :users, :through => :users_events

  # Fetches the top5 Events ranked by total users joined
  def self.top5
    topEvents = UsersEvent.group(:event_id).order('count_all DESC').count.keys
    Event.find(topEvents)
  end

 # Calculates the suggestions for a user near to him
 # sorted by take place timestamp
 def self.findSuggestions(user)
    suggestions = []

     user.locations.each { |location|
        suggestions.push(*Event.near(location,30))
     }

     user.events.each { |event| suggestions.delete(event) }
     user.rejected_events.each { |event| suggestions.delete(event) }

     suggestions = suggestions.uniq
     suggestions.sort_by { |element| element.take_place_timestamp  }

  end

  def self.findMyEvents(user)
    events = []

    user.events.order('take_place_timestamp ASC').each { |event|
      events.push(event)
    }

    return events
  end



  def self.findMyEventsHobbies(user)
    hobbies = []

    user.events.each { |event|
        hobbies.push(event.hobby)
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
