class CourseHistory < ApplicationRecord
	has_many :offering_history
	belongs_to :course
end
