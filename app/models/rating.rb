class Rating < ApplicationRecord
	belongs_to :pupil
	belongs_to :trainer

	validates_presence_of :value
end
