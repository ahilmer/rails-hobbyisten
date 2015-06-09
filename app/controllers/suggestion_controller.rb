class SuggestionController < ApplicationController
	before_action :authenticate_user!

	def index
		@suggestions = []
		current_user.hobbies.each { |hobby|
			@suggestions.push(*hobby.events)
		}

		current_user.locations.each { |location|
			@suggestions.push(*location.events)
		}

		current_user.rejected_events.each { |event|
			@suggestions.delete(event)
		}

		current_user.events.each { |event|
			@suggestions.delete(event)
		}
	end

end
