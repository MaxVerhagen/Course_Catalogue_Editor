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
			
			if params[:i]== "1" then
				@pagy, @courses = pagy(Course.active_courses)
			else
				@pagy, @courses = pagy(Course.all)
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
	end
	
	# POST /search
	def search
		if params[:course][:hide_inactive] == "1" then
			@pagy, @courses = pagy(Course.active_courses)
		else
			@pagy, @courses = pagy(Course.all)
		end

		course_id_query = params[:course][:course_id]
		course_title_query = params[:course][:course_title]

		if !course_id_query.empty? then
			redirect_to protocol: 'https://', action: 'index', qid: params[:course][:course_id], i: params[:course][:hide_inactive]
			# @pagy, @courses = pagy(@courses.where(admin_course_id: course_id_query))
		elsif !course_title_query.empty? then
			redirect_to protocol: 'https://', action: 'index', qt: params[:course][:course_title], i: params[:course][:hide_inactive]
			# @pagy, @courses = pagy(@courses.where("long_title like ?", "#{course_title_query}%"))			
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
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
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
