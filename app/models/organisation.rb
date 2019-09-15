class Organisation < ApplicationRecord
	has_many :ownerships
	has_many :offerings, through: :ownerships
end
