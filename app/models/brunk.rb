class Brunk < ApplicationRecord
	 belongs_to :runner_one, :class_name => 'Runner'
	 belongs_to :runner_two, :class_name => 'Runner'
	 belongs_to :property_one, :class_name => 'Property'
	 belongs_to :property_two, :class_name => 'Property'
end


