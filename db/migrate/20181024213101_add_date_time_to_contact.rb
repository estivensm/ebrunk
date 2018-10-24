class AddDateTimeToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :datetime_call, :datetime
  end
end
