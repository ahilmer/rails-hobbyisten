class SuggestionController < ApplicationController
	before_action :authenticate_user!

	def index
				@suggestions = Event.findSuggestions2(current_user)
	end

end
