class Property < ApplicationRecord
    belongs_to :runner
    belongs_to :country
    mount_uploader :images, PropertyUploader
end
