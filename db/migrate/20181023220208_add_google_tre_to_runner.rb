class AddGoogleTreToRunner < ActiveRecord::Migration[5.2]
  def change
    add_column :runners, :sign_in_count, :integer
    add_column :runners, :current_sign_in_at, :datetime
    add_column :runners, :last_sign_in_at, :datetime
    add_column :runners, :current_sign_in_ip, :string
    add_column :runners, :last_sign_in_ip, :string
  end
end
