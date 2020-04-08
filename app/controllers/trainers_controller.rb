class TrainersController < ApplicationController
	before_action :set_trainer, only: [:show]

	def index
		@trainers = Trainer.where(city: current_pupil.city) if pupil_signed_in?
	end

	def show
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:id])
	end
end
