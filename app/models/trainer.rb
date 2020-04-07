class Trainer < ApplicationRecord
  has_many :pupils
  has_many :trains
  has_many :ratings

  validates_uniqueness_of :email, :cref

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
