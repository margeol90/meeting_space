class Office < ApplicationRecord
  attr_accessor :facility

  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # has_many :reviews, through: :bookings
  has_many :office_facilities
  has_many :facilities, through: :office_facilities
  accepts_nested_attributes_for :office_facilities

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

  pg_search_scope :search_by_address,
                  against: [:address],
                  using: {
                    tsearch: { prefix: true }
                  }

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
