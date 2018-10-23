class AddRelationToBrunk < ActiveRecord::Migration[5.2]
  def change
    add_column :brunks, :runner_one_id, :integer
    add_column :brunks, :runner_two_id, :integer
    add_column :brunks, :property_one_id, :integer
    add_column :brunks, :property_two_id, :integer
  end
end
