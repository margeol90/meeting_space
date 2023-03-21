class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @city = request.location.city if Rails.env.production?
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end

  def my_properties
    @offices = Office.where(user_id: current_user.id)
  end

  def my_account
    @user = User.find(current_user.id)
    @bookings = Booking.where(user_id: @user)
  end

  def property_bookings
    @bookings = Bookings.where(office_id: office.id)
  end
end
