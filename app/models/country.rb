class Country < ApplicationRecord
	has_many :runner, optional: true
end
