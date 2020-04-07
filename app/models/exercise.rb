class Exercise < ApplicationRecord
	belongs_to :train

	validates_presence_of :name
end
