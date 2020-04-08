class ExercisesController < ApplicationController
	before_action :set_train, only: [:new]

	def new
		@exercise = Exercise.new
	end

	def create
		
	end

	private

	def set_train
		@train = Train.find(params[:train])
	end
end
