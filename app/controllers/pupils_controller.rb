class PupilsController < ApplicationController
	before_action :set_pupil, only: [:show]

	def index
	end

	def show
	end

	private

	def set_pupil
		@pupil = Pupil.find(params[:id])
	end
end
