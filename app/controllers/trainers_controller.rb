class TrainersController < ApplicationController
	before_action :set_trainer, only: [:show]

	def index
		@trainers = current_pupil.trainers if pupil_signed_in?
	end

	def show
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:id])
	end
end
