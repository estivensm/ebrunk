class Property < ApplicationRecord
    belongs_to :runner
    has_many :runners_one_id
    belongs_to :country, optional: true
    
    has_many :property_images, inverse_of: :property, dependent: :destroy
    accepts_nested_attributes_for :property_images, :allow_destroy => true

    mount_uploader :images, PropertyUploader

    scope :show_true, -> { where(brunk: true) }
    scope :show_false, -> { where(brunk: false) }


    def self.search(  search ,search2, search3)

        search != "" ? (scope :ciudad, -> { where(city: search) }) : (scope :ciudad, -> { where.not(id: nil) }) 
        search2 != "" ? (scope :pais, -> { where(country_id: search2) }) : (scope :pais, -> { where.not(id: nil) })
        search3 != "" ? (scope :tipo_propiedad, -> { where(property_type: search3)}) : (scope :tipo_propiedad, -> { where.not(id: nil) })
        ciudad.pais.tipo_propiedad

    end

     
end
