class WelcomeController < ApplicationController
	def index
		@weight = Weight.new
	end
end
