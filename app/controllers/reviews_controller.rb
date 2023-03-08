class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save!
      redirect_to office_path(@booking.office)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(:booking_id)
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
