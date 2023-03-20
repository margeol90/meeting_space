# To deliver this notification:
#
# BookingNotification.with(booking: @booking).deliver_later(current_user)
# BookingNotification.with(booking: @booking).deliver(current_user)

class BookingNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # # deliver_by :email, mailer: "UserMailer"
  # # deliver_by :slack
  # # deliver_by :custom, class: "MyDeliveryMethod"
  deliver_by :action_cable, channel: NotificationsChannel, stream: :custom_stream, format: :action_cable_data


  # # Add required params
  # #
  # param :booking

  # # Define helper methods to make rendering easier.
  # #
  def message
    @office = Office.find(params[:booking][:office_id])
    @booking = Booking.find(params[:booking][:id])
    @user = User.find(@booking.user_id)
    "New booking for #{@office.name} by #{@user.first_name}"
  end

  def url
    office_path(Office.find(params[:booking][:office_id]))
  end
end
