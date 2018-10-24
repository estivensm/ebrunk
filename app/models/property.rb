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

class Property < ApplicationRecord
    belongs_to :runner
    has_many :runners_one_id
    belongs_to :country, optional: true
    has_many :contacts
    
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
