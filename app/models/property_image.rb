# == Schema Information
#
# Table name: property_images
#
#  id          :integer          not null, primary key
#  file        :string
#  runner_id   :integer
#  property_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PropertyImage < ApplicationRecord
	belongs_to :property , inverse_of: :property_images

	mount_uploader :file, PropertyImagesUploader
end
