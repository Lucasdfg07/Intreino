class TrainsController < ApplicationController
	before_action :set_train, only: [:show]

	def index
	end

	def show
	end

	private

	def set_train
		@train = Train.find(params[:id])
	end	
end
