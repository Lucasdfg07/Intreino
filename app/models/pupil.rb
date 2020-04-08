class Pupil < ApplicationRecord
  has_many :trainers
  has_many :trains
  has_many :solicitations

  belongs_to :city

  validates_uniqueness_of :email
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def profile_image
  	if self.photo.present?
  		 self.photo
  	else
  		 "no-photo"
  	end
  end
end
