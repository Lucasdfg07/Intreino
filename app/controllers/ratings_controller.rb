class RatingsController < ApplicationController
	before_action :set_trainer, only: [:new]

	def new
		@rating = Rating.new
	end

	def create
		@rating = Rating.new(rating_params)
		@rating.pupil_id = current_pupil.id
		@rating.trainer_id = params[:trainer_id]

		if @rating.save
			redirect_to trainer_path(params[:trainer_id]), notice: 'Comentário realizado com sucesso!'
		else
			redirect_to trainer_path(params[:trainer_id]), alert: 'Falha ao realizar comentário! Tente novamente mais tarde.'
		end
	end

	private

	def set_trainer
		@trainer = Trainer.find(params[:trainer])
	end

	def rating_params
		params.require(:rating).permit(:value, :comment)
	end
end
