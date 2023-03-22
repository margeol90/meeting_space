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

    @offices = @offices.where("max_capacity <= ?", params[:max_capacity]) if params[:max_capacity].present?
    @offices = @offices.where("price <= ?", params[:max_price]) if params[:max_price].present?
    @offices = @offices.where("price >= ?", params[:min_price]) if params[:min_price].present?

    if params[:facilities].present? && params[:facilities][:facility_id] != ''
      @offices = @offices.joins(:facilities).where(facilities: { id: params[:facilities][:facility_id] })
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
    mark_notification_as_read
  end

  def new
    @office = Office.new
    @office.office_facilities.build
    authorize @office
  end

  def create
    @office = Office.new(office_params)
    @office.user = current_user

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
                                   facilities: [],
                                   # IF WE USE QUANTITIES USE THIS ONE
                                   office_facilities_attributes: %i[_destroy facility_id quantity])
    # IF WE DON'T WANT QUANTITIES USE:
    #  facility_ids: [])
  end

  def set_office
    @office = Office.find(params[:id])
    authorize @office
  end

  def mark_notification_as_read
    if current_user
      notifications_to_mark_as_read = @office.notifications_as_office.where(recipient: current_user)
      notifications_to_mark_as_read.update_all(read_at: Time.zone.now)
    end
  end
end
