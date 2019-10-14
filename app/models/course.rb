class Course < ApplicationRecord
	has_many :offerings

	def is_active?
		status == true ? true : false
	end
end
