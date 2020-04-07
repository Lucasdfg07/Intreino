class Pupil < ApplicationRecord
  has_many :trainers
  has_many :trains

  belongs_to :city

  validates_uniqueness_of :email
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
