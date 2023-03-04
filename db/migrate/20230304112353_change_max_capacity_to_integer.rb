class ChangeMaxCapacityToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :offices, :max_capacity
    add_column :offices, :max_capacity, :integer
  end
end
