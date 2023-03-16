class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_one_attached :avatar
  after_commit :add_default_avatar, on: %i[create update]

  has_many :offices
  has_many :bookings, dependent: :destroy
  has_many :notifications, as: :recipient, dependent: :destroy

  private

  def add_default_avatar
    unless avatar.attached?
      avatar.attach(
        io: File.open(
          Rails.root.join(
            'app', 'assets', 'images', 'genavatar.png'
          )
        ), filename: 'genavatar.png',
        content_type: 'image/png'
      )
    end
  end
end
