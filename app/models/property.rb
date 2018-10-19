class Property < ApplicationRecord
    belongs_to :runner
    belongs_to :country
end
