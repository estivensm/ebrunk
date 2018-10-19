class AddNameToRunner < ActiveRecord::Migration[5.2]
  def change
    add_column :runners, :name, :string
    add_column :runners, :apellido, :string
  end
end
