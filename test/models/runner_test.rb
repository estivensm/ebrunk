# == Schema Information
#
# Table name: runners
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  code                   :integer
#  country_id             :integer
#  address                :string
#  city                   :string
#  type_of_identification :string
#  number_document        :integer
#  mobile                 :integer
#  phone                  :integer
#  age                    :integer
#  number_account_bank    :integer
#  image                  :string
#  video_call             :boolean
#  name                   :string
#  apellido               :string
#  provider               :string
#  acces_token            :string
#  refresh_token          :string
#  uid                    :string
#  token                  :string
#  expires_at             :datetime
#  expires_ats            :string
#  sign_in_count          :integer
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#

require 'test_helper'

class RunnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
