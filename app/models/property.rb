class Property < ApplicationRecord
    belongs_to :runner
    belongs_to :country, optional: true
    mount_uploader :images, PropertyUploader
end
