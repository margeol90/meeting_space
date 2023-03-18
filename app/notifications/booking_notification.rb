# To deliver this notification:
#
# BookingNotification.with(booking: @booking).deliver_later(current_user)
# BookingNotification.with(booking: @booking).deliver(current_user)

class BookingNotification < Noticed::Base
  # Add your delivery methods
  #
  # deliver_by :database
  # # deliver_by :email, mailer: "UserMailer"
  # # deliver_by :slack
  # # deliver_by :custom, class: "MyDeliveryMethod"

  # # Add required params
  # #
  # param :booking

  # # Define helper methods to make rendering easier.
  # #
  # def message
  #   t(".message")
  # end

  # def url
  #   booking_path(params[:booking])
  # end
end
