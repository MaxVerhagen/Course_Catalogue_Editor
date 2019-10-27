class CoursesController < ApplicationController
	include Pagy::Backend

	protect_from_forgery prepend: true
  	before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
	def index		
		if params.has_key? :sort then
			@sort = params[:sort]

			@pagy, @courses = pagy(Course.sorted @sort)
		else
			@sort = "ida"

			@pagy, @courses = pagy(Course.all)
			
			if params[:i]== "1" then
				@pagy, @courses = pagy(Course.active_courses)
			end

			if params.key?(:qid) then
				@pagy, @courses = pagy(@courses.where(admin_course_id: params[:qid]))
			else
				@pagy, @courses = pagy(@courses.where("long_title like ?", "#{params[:qt]}%"))
			end
		end
  	end

	# GET /courses/1
	# GET /courses/1.json
	def show
		@course = Course.find params[:id]
	end
	
	# POST /search
	def search
		if !params[:course][:course_id].empty? then
			redirect_to protocol: 'https://', action: 'index', qid: params[:course][:course_id], i: params[:course][:hide_inactive]
		elsif !params[:course][:course_title] then
			redirect_to protocol: 'https://', action: 'index', qt: params[:course][:course_title], i: params[:course][:hide_inactive]
		end
	end

  # GET /courses/new
  def new
	@course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
	params.permit!
	@course = Course.new(course_params)

	respond_to do |format|
	  if @course.save
		format.html { redirect_to protocol: 'https://', action: 'index', notice: 'Course was successfully created.' }
		format.json { render :show, status: :created, location: @course }
	  else
		format.html { redirect_to protocol: 'https://', action: 'index' }
		format.json { render json: @course.errors, protocol: 'https://', status: :unprocessable_entity }
	  end
	end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
	params.permit!

	c_h = @course.course_histories.create()
	c_h.update(course_params)

	respond_to do |format|
	  if @course.update(course_params)
		format.html { redirect_to protocol: 'https://', action: 'index', notice: 'Course was successfully updated.' }
		format.json { render :show, status: :ok, location: @course }
	  else
		format.html { redirect_to protocol: 'https://', action: 'index' }
		format.json { render json: @course.errors, status: :unprocessable_entity }
	  end
	end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
	@course.destroy
	respond_to do |format|
	  format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
	  format.json { head :no_content }
	end
  end
  
  def offerings
  	@course = Course.find params[:id]
  	@theofferings = Offering.where(admin_course_id: @course.admin_course_id)
  end

  private
	# Use callbacks to share common setup or constraints between actions.
	def set_course
	  @course = Course.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def course_params
	  params.fetch(:course, {})
	end
end
