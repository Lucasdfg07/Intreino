class Anamnesis < ApplicationRecord
	belongs_to :pupil

	validates_presence_of :recomendation, :surgery, :squeeze_or_burning, 
	:bone_problem, :medicine, :contraindication
end
