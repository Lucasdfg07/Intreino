class PupilTrainersController < ApplicationController
	before_action :set_pupil
	before_action :set_solicitation

	def new
		create
	end

	def create
		@pupil_trainer = PupilTrainer.new
		@pupil_trainer.pupil = @pupil
		@pupil_trainer.trainer = current_trainer

		if @pupil_trainer.save
			# If accept. Destroy solicitation
			@solicitation.destroy

			redirect_to root_path, notice: 'Aluno confirmado com sucesso!'
		else
			redirect_to root_path, alert: 'Erro na confirmação do aluno! Tente novamente mais tarde.'
		end
	end

	private

	def set_pupil
		@pupil = Pupil.find(params[:pupil])
	end

	def set_solicitation
		@solicitation = Solicitation.find(params[:solicitation])
	end
end
