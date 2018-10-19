class Property < ApplicationRecord
    belongs_to :runner, optional: true
    belongs_to :country
    mount_uploader :images, PropertyUploader
end
