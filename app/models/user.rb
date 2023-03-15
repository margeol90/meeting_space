class User < ApplicationRecord
  has_one_attached :avatar
  has_many :offices
  has_many :bookings, dependent: :destroy
  has_many :notifications, as: :recipient, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
end
