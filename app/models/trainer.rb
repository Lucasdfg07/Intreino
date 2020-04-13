class Trainer < ApplicationRecord
  has_many :pupil_trainers
  has_many :pupils, through: :pupil_trainers
  has_many :trains, dependent: :destroy
  has_many :ratings, dependent: :destroy

  belongs_to :city

  validates_uniqueness_of :email, :cref

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

  def get_rating_value
    total = 0

    self.ratings.each do |rating|
      total += rating.value
    end

    return (self.ratings.count > 0) ? total.to_f/self.ratings.count : 0 
  end

  def is_valid?(link)
    if link.match(/http/)
      return true
    end
  end

  def rating_value_sum
    total = 0
    self.ratings.each do |rating|
      total += rating.value
    end

    total
  end

  def get_position
    count = 1

    Trainer.where(city: self.city).each do |trainer|
      if trainer.get_rating_value > self.get_rating_value
        count += 1
      end
    end

    return count
  end

  def pupil_is_in_rating?(pupil)
    self.ratings.each do |rating|
      return true if rating.pupil == pupil
    end
    
    return false
  end

  def is_status_pendent?
    return true if self.status == 'pendent'
  end

end
