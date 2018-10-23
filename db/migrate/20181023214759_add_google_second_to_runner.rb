class AddGoogleSecondToRunner < ActiveRecord::Migration[5.2]
  def change
    add_column :runners, :expires_ats, :string
  end
end
