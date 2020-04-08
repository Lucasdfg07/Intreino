class TrainsController < ApplicationController
	before_action :set_train, only: [:show]
	before_action :set_pupil, only: [:new, :create]

	def index
	end

	def show
	end

	def new
		@train = Train.new
	end

	def create
		@train = Train.new(train_params)
		@train.trainer = current_trainer
		@train.pupil = @pupil

		if @train.save
			redirect_to new_exercises_path(train: @train), notice: 'Treino criado com sucesso!'
		else
			redirect_to pupils_path, alert: 'Erro na criação do treino! Tente novamente mais tarde.'
		end
	end

	private

	def train_params
		params.require(:train).permit(:day_of_week, :grouping, :modality, :validate_date)
	end

	def set_train
		@train = Train.find(params[:id])
	end	

	def set_pupil
		@pupil = Pupil.find(params[:pupil])
	end
end
