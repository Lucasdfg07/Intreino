class WeightsController < ApplicationController
	def new
		create
	end

	def create
		@weight = Weight.new(weight_params)
		@weight.pupil = current_pupil
		
		if @weight.save
			redirect_to root_path, notice: 'Peso registrado com sucesso!'
		else
			redirect_to root_path, alert: 'Erro no registro do peso! Tente novamente mais tarde.'
		end
	end

	private

	def weight_params
		params.require(:weight).permit(:value)
	end
end
