class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :message
      t.integer :property_id
      t.boolean :call
      t.date :call_date
      t.boolean :state_call
      t.string :url_call
      t.boolean :contac_state

      t.timestamps
    end
  end
end
