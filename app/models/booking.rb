class Booking < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :user
  belongs_to :office
  has_one :review, dependent: :destroy

  # VALIDATIONS
  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :status, presence: true
  validate :end_date_after_start_date

  # status of booking
  enum status: { pending: 0, confirmed: 1, declined: 2 }

  # NOTIFICATIONS
  after_commit :notify_recipient, on: :create
  after_commit :notify_renter, on: :update
  has_noticed_notifications model_name: 'Notification'
  # before_destroy :cleanup_notifications

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end

  def notify_recipient
    # With office.user we deliver to the owner of the office and not the owner of the booking
    BookingNotification.with(booking: self, office: office).deliver(office.user)
  end

  def notify_renter
    BookingUpdateNotification.with(booking: self, office: office).deliver(user)
  end

  # def cleanup_notifications
  #   notifications_as_booking.destroy_all unless notifications_as_booking.nil?
  # end
end
