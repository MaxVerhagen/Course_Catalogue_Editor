class Course < ApplicationRecord
	has_many :offerings

	def is_active?
		status
	end

	def self.sorted(sort)
		# ida = course id ascending order
		# idd = course id descending order
		# ta = course title ascending order
		# td = course title descending order

		if sort == "ida" then
			order = :asc
			key = :admin_course_id
		elsif sort == "idd" then
			order = :desc
			key = :admin_course_id
		elsif sort== "ta" then
			order = :asc
			key = :long_title
		elsif sort == "td" then
			order = :desc
			key = :long_title
		end		

		return Course.order(key => order)
	end
end
