class EventsHobby < ActiveRecord::Base
  belongs_to :hobby
  belongs_to :event
end
