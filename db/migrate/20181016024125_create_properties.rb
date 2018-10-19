class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :type_of_offer
      t.string :property_type
      t.integer :runner_id
      t.integer :country_id
      t.string :department
      t.string :city
      t.string :address
      t.integer :latitude
      t.integer :length
      t.integer :prince
      t.integer :stratum
      t.integer :area
      t.string :blueprints
      t.integer :number_bedrooms
      t.integer :number_bathrooms
      t.integer :levels
      t.string :state
      t.boolean :state_favorite
      t.string :url_video
      t.string :images
      t.string :title

      t.timestamps
    end
  end
end
