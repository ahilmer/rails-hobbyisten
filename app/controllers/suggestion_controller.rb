class SuggestionController < ApplicationController
	before_action :authenticate_user!

	def index
				@suggestions = Event.findSuggestions(current_user)
	end

end
