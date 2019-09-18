class Course < ApplicationRecord
	has_many :offerings

	def is_active?
		status
	end
end
