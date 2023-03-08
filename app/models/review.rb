class Review < ApplicationRecord
  belongs_to :booking

  validates :comment, presence: true
  validates :ratings, presence: true
end
