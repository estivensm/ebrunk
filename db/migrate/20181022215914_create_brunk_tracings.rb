class CreateBrunkTracings < ActiveRecord::Migration[5.2]
  def change
    create_table :brunk_tracings do |t|
      t.integer :brunk_id
      t.integer :runner_id
      t.text :comment
      t.string :offer

      t.timestamps
    end
  end
end
