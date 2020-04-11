class WelcomeController < ApplicationController
	def index
		@weight = Weight.new

		@weight_of_today = Weight.where("date(created_at) = ? AND pupil_id = ?", Date.today, current_pupil).last.value if pupil_signed_in?
	end
end
