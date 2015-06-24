class SuggestionController < ApplicationController

	def index
				if user_signed_in?
					@suggestions = Event.findSuggestions(current_user)
				else
					@suggestions = Event.top5
				end
	end
end
