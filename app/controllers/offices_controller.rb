class OfficesController < ApplicationController
  # attr_accessor :facility

  before_action :set_office, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @offices = policy_scope(Office).search_by_address(params[:query])
    else
      @offices = policy_scope(Office).all
    end
    # The `geocoded` scope filters only offices with coordinates
    @markers = @offices.geocoded.map do |office|
      {
        lat: office.latitude,
        lng: office.longitude,
        info_window_html: render_to_string(partial: "popup", locals: { office: }),
        image_url: helpers.asset_url("favicon.png")
      }
    end
  end

  def show
    @booking = Booking.new
    @bookings = @office.bookings
    authorize @booking
    @markers = [{
      lat: @office.latitude,
      lng: @office.longitude,
      info_window_html: render_to_string(partial: "popup", locals: { office: @office }),
      image_url: helpers.asset_url("favicon.png")
    }]

    @has_review = @bookings.any? { |booking| !booking.review.nil? }
  end

  def new
    @office = Office.new
    authorize @office
  end

  def create
    @office = Office.new(office_params)
    @office.user = current_user
    @office.facility_ids.compact
    authorize @office

    if @office.save!
      redirect_to  office_path(@office)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @office.update(office_params)
      redirect_to office_path(@office), notice: "Your property's details have been successufly saved"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @office.destroy
    redirect_to my_properties_path, notice: "Property has been permanently deleted from your list"
  end

  private

  def office_params
    params.require(:office).permit(:name,
                                   :meeting_rooms,
                                   :price,
                                   :address,
                                   :description,
                                   :max_capacity,
                                   :photo,
                                   facility_ids: [])
  end

  def set_office
    @office = Office.find(params[:id])
    authorize @office
  end
end
