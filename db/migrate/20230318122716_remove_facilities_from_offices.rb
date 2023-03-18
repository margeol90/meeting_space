class RemoveFacilitiesFromOffices < ActiveRecord::Migration[7.0]
  def change
    remove_column :offices, :facility_ids
  end
end
