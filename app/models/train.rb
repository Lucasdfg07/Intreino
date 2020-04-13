class Train < ApplicationRecord
	belongs_to :trainer
	belongs_to :pupil

	has_many :exercises, dependent: :destroy

	validates_presence_of :day_of_week, :modality, :grouping


	def get_photo
		if self.modality == "Funcional"
			"exercise"
		else
			"barbell"
		end
	end
end
