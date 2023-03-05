class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit destroy]
  before_action :set_office, only: %i[new create edit update]

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.office = @office

    if @booking.save!
      redirect_to my_bookings_path
      flash[:notice] = "Your booking has been successful!"
    else
      redirect_to office_path(@office)
      flash[:alert] = "Your booking was not successful. Please try again"
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to my_bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(start_date, end_date, occupants)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_office
    @office = Office.find(params[:id])
  end
end
