class SolicitationsController < ApplicationController
	before_action :set_trainer, only: [:new]
	before_action :set_solicitation, only: [:destroy]

	def new
		create
	end

	def create
		@solicitation = Solicitation.new

		@solicitation.pupil = current_pupil
		@solicitation.trainer = @trainer

		if @solicitation.save
			redirect_to root_path, notice: 'Solicitação realizada com sucesso!'
		else
			redirect_to root_path, alert: 'Erro na solicitação! Tente novamente mais tarde.'
		end
	end

	def show
	end

	def destroy
		if @solicitation.destroy
			redirect_to request.referrer, notice: 'Solicitação removida com sucesso!'
		else
			redirect_to request.referrer, alert: 'Erro na remoção da solicitação! Tente novamente mais tarde.'
		end
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:trainer])
	end

	def set_solicitation
		@solicitation = Solicitation.find(params[:id])
	end
end
