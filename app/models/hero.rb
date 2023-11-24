class Hero < ApplicationRecord
  has_many :reviews
  has_one_attached :image
  belongs_to :user
  has_many :bookings
  
  def average_rating
    reviews.average(:rating)
  end
end
