class Office < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :facilities

  validates :name, presence: true, uniqueness: true
  validates :max_capacity, :price, :facilities, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_address_description,
                  against: [ :name, :description, :address ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
