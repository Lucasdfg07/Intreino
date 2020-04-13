class PupilTrainersController < ApplicationController
	before_action :set_pupil_trainer_relation, only: [:destroy]

	def new
		@pupil_trainer = PupilTrainer.new
	end

	def create
		@pupil_trainer = PupilTrainer.new(pupil_params)
		@pupil_trainer.trainer = current_trainer

		if @pupil_trainer.save
			redirect_to pupils_path, notice: 'Aluno confirmado com sucesso!'
		else
			redirect_to pupils_path, alert: 'Erro na confirmação do aluno! Tente novamente mais tarde.'
		end
	end

	def destroy
		if @pupil_trainer.destroy
			redirect_to pupils_path, notice: 'Aluno removido com sucesso!'
		else
			redirect_to pupils_path, alert: 'Erro ao remover aluno! Tente novamente mais tarde.'
		end
	end

	private

	def pupil_params
		params.require(:pupil_trainer).permit(:pupil_id)
	end

	def set_pupil_trainer_relation
		@pupil_trainer = PupilTrainer.find_by(pupil: params[:id])
	end
end
