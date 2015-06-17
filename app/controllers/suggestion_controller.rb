class SuggestionController < ApplicationController

	def index
				if user_signed_in?
					@suggestions = Event.findSuggestions2(current_user)
				else
					@suggestions = Event.all
				end

	end

end
