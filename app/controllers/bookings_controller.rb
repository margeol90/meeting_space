class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_office, only: %i[index new create revenue]

  def index
    @bookings = policy_scope(Booking)
    @cost = revenue(@office.bookings)
  end

  def show
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.office = @office
    @booking.total_price = cost(@booking.start_date, @booking.end_date, @office.price)
    if @booking.save!
      redirect_to my_bookings_path
      flash[:notice] = "Your booking has been successful!"
    else
      redirect_to office_path(@office)
      flash[:alert] = "Your booking was not successful. Please try again"
    end
  end

  def edit
    @office = @booking.office
  end

  def update
    @booking.update(booking_params)
    if current_user == @booking.user
      redirect_to my_bookings_path
    elsif current_user == @booking.office.user
      redirect_to office_bookings_path(@booking.office)
    end
  end

  def destroy
    @booking.destroy
    redirect_to my_bookings_path
  end

  def download
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "invoice",
               template: "bookings/show",
               formats: [:html],
               disposition: :inline,
               layout: 'pdf',
               encoding: "UTF-8"
      end
    end
  end

  private

  def cost(startdate, enddate, price)
    if enddate > startdate
      days = enddate - startdate
      total = days * price
    elsif enddate == startdate
      total = price
    end
    return '%.2f' % total
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_office
    @office = Office.find(params[:office_id])
  end

  def revenue(bookings)
    revenue = 0
    bookings.each do |booking|
      revenue += booking.total_price if booking.confirmed?
    end
    return revenue
  end
end
