class TrainersController < ApplicationController
	before_action :set_trainer, only: [:show]

	def index
		@trainers = Trainer.where(city: current_pupil.city)
							.sort_by {|trainer| trainer.get_rating_value}.reverse if pupil_signed_in?
	end

	def show
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:id])
	end
end
