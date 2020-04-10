class Pupil < ApplicationRecord
  has_many :pupil_trainers
  has_many :trainers, through: :pupil_trainers
  has_many :trains, dependent: :destroy
  has_many :solicitations, dependent: :destroy
  has_one :anamnesis, dependent: :destroy

  belongs_to :city

  validates_uniqueness_of :email
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, AvatarUploader

  def profile_image
  	if self.photo.present?
  		 self.photo
  	else
  		 "no-photo"
  	end
  end
end
