class AddIconToFacility < ActiveRecord::Migration[7.0]
  def change
    add_column :facilities, :icon, :string
  end
end
