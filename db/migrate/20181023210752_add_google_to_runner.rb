class AddGoogleToRunner < ActiveRecord::Migration[5.2]
  def change
    add_column :runners, :provider, :string
    add_column :runners, :acces_token, :string
    add_column :runners, :refresh_token, :string
    add_column :runners, :uid, :string
    add_column :runners, :token, :string
    add_column :runners, :expires_at, :datetime
  end
end
