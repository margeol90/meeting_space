class AddFacilityToOffice < ActiveRecord::Migration[7.0]
  def change
    add_column :offices, :facility_ids, :integer, default: [], array: true
  end
end
