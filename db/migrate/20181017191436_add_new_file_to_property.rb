class AddNewFileToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :parking_lot, :integer
  end
end
