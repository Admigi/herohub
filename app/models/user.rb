class User < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :heros, dependent: :destroy
  has_many :sent_messages, class_name: 'Message', foreign_key: 'user_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'hero_id'
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
