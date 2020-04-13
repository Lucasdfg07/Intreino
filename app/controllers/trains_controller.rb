class TrainsController < ApplicationController
	before_action :set_train, only: [:show, :destroy]
	before_action :set_pupil, only: [:new, :create]

	def index
		@pupil = current_pupil if pupil_signed_in?

		@pupil = Pupil.find(params[:pupil]) if trainer_signed_in?
	end

	def show
		@count = 0
	end

	def new
		@train = Train.new
	end

	def create
		@train = Train.new(train_params)
		@train.trainer = current_trainer
		@train.pupil = @pupil

		if @train.save
			redirect_to new_exercise_path(train: @train), notice: 'Treino criado com sucesso!'

			NotificationMailer.notification_message(@train.trainer, @pupil).deliver_later
		else
			redirect_to pupils_path, alert: 'Erro na criação do treino! Tente novamente mais tarde.'
		end
	end

	def destroy
		if @train.destroy
			redirect_to request.referrer, notice: 'Treino removido com sucesso!'
		else
			redirect_to request.referrer, alert: 'Erro na remoção do treino! Tente novamente mais tarde.'
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
