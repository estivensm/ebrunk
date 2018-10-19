class Country < ApplicationRecord
	has_many :runners, optional :true
end
