class CreatePropertyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :property_images do |t|
      t.string :file
      t.integer :runner_id
      t.integer :property_id

      t.timestamps
    end
  end
end
