class AddBrunkToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :brunk, :boolean
    add_column :properties, :brunk_type, :string
  end
end
