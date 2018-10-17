class AddFieldsToRunner < ActiveRecord::Migration[5.2]
  def change
    add_column :runners, :code, :integer
    add_column :runners, :country_id, :integer
    add_column :runners, :address, :string
    add_column :runners, :city, :string
    add_column :runners, :type_of_identification, :string
    add_column :runners, :number_document, :integer
    add_column :runners, :mobile, :integer
    add_column :runners, :phone, :integer
    add_column :runners, :age, :integer
    add_column :runners, :number_account_bank, :integer
    add_column :runners, :image, :string
    add_column :runners, :video_call, :boolean
  end
end
