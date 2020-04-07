class Train < ApplicationRecord
	belongs_to :trainer
	belongs_to :pupil

	has_many :exercises

	validates_presence_of :type
end
