class DropOfficeFacilities < ActiveRecord::Migration[7.0]
  def change
    drop_table :office_facilities
  end
end
