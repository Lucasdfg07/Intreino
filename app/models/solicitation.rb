class Solicitation < ApplicationRecord
	belongs_to :pupil
	belongs_to :trainer

	validates_presence_of :approved
end
