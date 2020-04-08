class Train < ApplicationRecord
	belongs_to :trainer
	belongs_to :pupil

	has_many :exercises, dependent: :destroy

	validates_presence_of :type

	def get_photo
		if self.type == "funcional"
			"exercise"
		else
			"barbell"
		end
	end
end
