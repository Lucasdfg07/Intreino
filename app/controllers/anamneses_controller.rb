class AnamnesesController < ApplicationController
	before_action :set_anamnesis, only: [:show]

	def new
		@anamneses = Anamnesis.new
	end

	def create
		@anamneses = Anamnesis.new(anamnesis_params)
		@anamneses.pupil = current_pupil

		if @anamneses.save
			redirect_to root_path, notice: 'Anamnese salva com sucesso!'
		else
			redirect_to root_path, alert: 'Erro ao salvar Anamnese! Tente novamente mais tarde.'
		end
	end

	private

	def set_anamnesis
		@anamnesis = Anamnesis.find(params[:id])
	end

	def anamnesis_params
		params.require(:anamnesis).permit(:recomendation, :surgery, :squeeze_or_burning, :bone_problem, :medicine, :contraindication)
	end
end
