class Facility < ApplicationRecord
  has_many :office_facilities
  has_many :offices, through: :office_facilities
end
