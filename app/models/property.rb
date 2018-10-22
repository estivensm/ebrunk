class Property < ApplicationRecord
    belongs_to :runner
    belongs_to :country, optional: true
    mount_uploader :images, PropertyUploader

    scope :show_true, -> { where(brunk: true) }
    scope :show_false, -> { where(brunk: false) }
end
