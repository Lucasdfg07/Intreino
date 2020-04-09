class ExercisesController < ApplicationController
	before_action :set_train, only: [:new, :edit]
	before_action :set_exercise, except: [:new]

	def new
		@exercise = Exercise.create(train: @train, name: [''], reps: [''], series: [''], video: [''])
		
		redirect_to edit_exercise_path(id: @exercise, train: params[:train])
	end

	def edit
		@count = 0
	end

	def update
		if @exercise.update(exercise_params)
		  redirect_to request.referrer
		end
	end

	def add
		@exercise.add
		redirect_to request.referrer
	end

	def remove
		@exercise.remove
		redirect_to request.referrer
	end

	private

	def set_train
		@train = Train.find(params[:train])
	end

	def set_exercise
		@exercise = Exercise.find(params[:id])
	end

	def exercise_params
		params.require(:exercise).permit(name: [], reps: [], series: [], video: [])
	end
end
