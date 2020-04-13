class AdminsController < ApplicationController
	before_action :set_trainer

	def edit_trainer
	end

	def update
		if @trainer.update(trainer_params)
			redirect_to root_path, notice: 'Treinador atualizado com sucesso!'
		else
			redirect_to root_path, alert: 'Falha ao atualizar treinador! Tente novamente mais tarde.'
		end
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:trainer_id])
	end

	def trainer_params
		params.require(:trainer).permit(:status, :payment_validate)
	end
end
