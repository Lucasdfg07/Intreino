class WelcomeController < ApplicationController
	def index
		@trainers = Trainer.where(city: current_pupil.city) if pupil_signed_in?
	end
end
