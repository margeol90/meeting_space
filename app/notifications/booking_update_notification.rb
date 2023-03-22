# To deliver this notification:
#
# BookingUpdateNotification.with(post: @post).deliver_later(current_user)
# BookingUpdateNotification.with(post: @post).deliver(current_user)

class BookingUpdateNotification < Noticed::Base
  # Add your delivery methods
  #
  # deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"
  deliver_by :action_cable

  # Add required params
  #
  # param :booking

  # Define helper methods to make rendering easier.
  #
  def message
   @booking = Booking.find(params[:booking][:id])
   @office = Office.find(params[:booking][:office_id])
   if @booking.confirmed?
    "Your booking for #{@office.name} is confirmed"
   elsif @booking.declined?
    "Booking declined for #{@office.name}"
   end
  end
  #
  def url
    my_bookings_path
  end
end
