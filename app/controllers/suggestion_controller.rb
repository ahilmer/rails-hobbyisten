class SuggestionController < ApplicationController
	before_action :authenticate_user!

	def index
		@suggestions = Event.all
	end

end
