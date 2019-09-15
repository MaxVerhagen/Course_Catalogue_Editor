class Offering < ApplicationRecord
	belongs_to :course
	has_many :ownerships
	has_many :organisations, through: :ownerships
end
