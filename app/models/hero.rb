class Hero < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  has_many :messages, dependent: :destroy

  # before_destroy :destroy_user

  # def destroy_user
  #   user.destroy
  # end

  def average_rating
    reviews.average(:rating)
  end
end
