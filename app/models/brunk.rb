# == Schema Information
#
# Table name: brunks
#
#  id               :integer          not null, primary key
#  runner_one       :integer
#  runner_two       :integer
#  property_one     :integer
#  property_two     :integer
#  difference_value :integer
#  offer_one        :integer
#  offer_two        :integer
#  state_one        :integer
#  state_two        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  runner_one_id    :integer
#  runner_two_id    :integer
#  property_one_id  :integer
#  property_two_id  :integer
#

class Brunk < ApplicationRecord
	 belongs_to :runner_one, :class_name => 'Runner'
	 belongs_to :runner_two, :class_name => 'Runner'
	 belongs_to :property_one, :class_name => 'Property'
	 belongs_to :property_two, :class_name => 'Property'
end


