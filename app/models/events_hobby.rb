class EventsHobby < ActiveRecord::Base
  belongs_to :hobby
  belongs_to :event

  def self.getEventHobbies(events)
    eventhobbys = []

    events.each { |event|
      event.events_hobbies.each { |eventhobby|
        eventhobbys.push(eventhobby)
      }
    }

    return eventhobbys
  end
end
