class AddQuantityColumnToOfficeFacilities < ActiveRecord::Migration[7.0]
  def change
    add_column :office_facilities, :quantity, :integer
  end
end
