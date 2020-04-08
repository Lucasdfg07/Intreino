class Trainer < ApplicationRecord
  has_many :pupil_trainers
  has_many :pupils, through: :pupil_trainers
  has_many :trains
  has_many :ratings
  has_many :solicitations

  belongs_to :city

  validates_uniqueness_of :email, :cref

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def profile_image
  	if self.photo.present?
  		 self.photo
  	else
  		 "no-photo"
  	end
  end

  def get_rating_value
    total = 0
    self.ratings.each do |rating|
      total += rating.value
    end

    total/self.ratings.count
  end
end
