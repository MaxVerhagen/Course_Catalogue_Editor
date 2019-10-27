class Course < ApplicationRecord
	has_many :offerings
	has_many :course_histories

	def is_active?
		status
	end

	def is_last?
		if last_course then
			return "True"
		else
			return "False"
		end
	end

	def self.active_courses
		return Course.where(status: true)
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
