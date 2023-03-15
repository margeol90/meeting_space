# class OfficeFacilitiesController < ApplicationController
#   before_action :set_office, only: %i[create new]

#   def new
#     @office_facility = OfficeFacility.new
#     authorize @office_facility

#     @facilities = Facility.all
#   end

#   def create
#     facility_ids = office_facility_params[:facility_id]
#     facility_ids.reject!(&:empty?)
#     facility_ids.each do |facility_id|
#       @office_facility = OfficeFacility.new(facility_id: facility_id)
#       @office_facility.office = @office
#       authorize @office_facility
#       @office_facility.save!
#     end
#     if facility_ids.empty?
#       render :new, status: :unprocessable_entity
#     else
#       redirect_to office_path(@office)
#     end
#   end

#   private

#   def office_facility_params
#     params.require(:office_facility).permit(facility_id: [])
#   end

#   def set_office
#     @office = Office.find(params[:office_id])
#   end
# end
