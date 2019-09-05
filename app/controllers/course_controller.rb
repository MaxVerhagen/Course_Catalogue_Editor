class CoursesController < ApplicationController
before_action :set_course, only: [:show, :edit, :update, :destroy]

# GET /courses
# GET /courses.json
def index
	@courses = course.all
end

# GET /courses/1
# GET /courses/1.json
def show
end

# GET /courses/new
def new
	@faculty = faculty.find params[:faculty_id]
	@course = course.new
end

# GET /courses/1/edit
def edit
end

# POST /courses
# POST /courses.json
def create
	faculty = faculty.find params[:faculty_id]
	course_pos = faculty.courses.count
	course = faculty.courses.new(course_params.merge(faculty_pos: course_pos))

	respond_to do |format|
		if course.save
			format.html { redirect_to faculty, notice: 'course was successfully created.' }
		else
			format.html { redirect_to new_faculty_course_path(faculty), flash: { error: course.errors.full_messages.join(', ') } }
		end
	end
end

# PATCH/PUT /courses/1
# PATCH/PUT /courses/1.json
def update
	faculty = faculty.find params[:faculty_id]

	respond_to do |format|
		if @course.update(course_params)
			format.html { redirect_to edit_faculty_path(faculty), notice: 'course was successfully updated.' }
		else
			format.html { redirect_to edit_faculty_course_path(faculty), flash: { error: @course.errors.full_messages.join(', ') } }
		end
	end
end

# DELETE /courses/1
# DELETE /courses/1.json
def destroy
	faculty = faculty.find params[:faculty_id]
	course = course.find params[:id]
	faculty.courses.destroy course
	faculty.re_order_faculty_pos

end

private
	# Use callbacks to share common setup or constraints between actions.
	def set_course
		@course = course.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def course_params
	end
end