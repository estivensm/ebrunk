class CreateBrunks < ActiveRecord::Migration[5.2]
  def change
    create_table :brunks do |t|
      t.integer :runner_one
      t.integer :runner_two
      t.integer :property_one
      t.integer :property_two
      t.integer :difference_value
      t.integer :offer_one
      t.integer :offer_two
      t.integer :state_one
      t.integer :state_two

      t.timestamps
    end
  end
end
