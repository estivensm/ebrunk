# == Schema Information
#
# Table name: properties
#
#  id               :integer          not null, primary key
#  type_of_offer    :string
#  property_type    :string
#  runner_id        :integer
#  country_id       :integer
#  department       :string
#  city             :string
#  address          :string
#  latitude         :integer
#  length           :integer
#  prince           :integer
#  stratum          :integer
#  area             :integer
#  blueprints       :string
#  number_bedrooms  :integer
#  number_bathrooms :integer
#  levels           :integer
#  state            :string
#  state_favorite   :boolean
#  url_video        :string
#  images           :string
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  parking_lot      :integer
#  brunk            :boolean
#  brunk_type       :string
#

require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
