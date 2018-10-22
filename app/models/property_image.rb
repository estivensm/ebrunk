class PropertyImage < ApplicationRecord
	belongs_to :property , inverse_of: :property_images

	mount_uploader :file, PropertyImagesUploader
end
