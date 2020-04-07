class TrainersController < ApplicationController
	before_action :set_trainer

	def show
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:id])
	end
end
