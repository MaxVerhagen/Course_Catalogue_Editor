class CourseHistoriesController < ApplicationController
  before_action :set_course_history, only: [:show, :edit, :update, :destroy]

  # GET /course_histories
  # GET /course_histories.json
  def index
	@course = Course.find params[:id]
    @course_histories = @course.course_histories
  end

  # GET /course_histories/1
  # GET /course_histories/1.json
  def show
	@course = CourseHistory.find params[:id]
	puts "Max: #{@course.max_units}"
  end

  # GET /course_histories/new
  def new
    @course_history = CourseHistory.new
  end

  # GET /course_histories/1/edit
  def edit
  end

  # POST /course_histories
  # POST /course_histories.json
  def create
    @course_history = CourseHistory.new(course_history_params)

    respond_to do |format|
      if @course_history.save
        format.html { redirect_to @course_history, notice: 'Course history was successfully created.' }
        format.json { render :show, status: :created, location: @course_history }
      else
        format.html { render :new }
        format.json { render json: @course_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_histories/1
  # PATCH/PUT /course_histories/1.json
  def update
    respond_to do |format|
      if @course_history.update(course_history_params)
        format.html { redirect_to @course_history, notice: 'Course history was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_history }
      else
        format.html { render :edit }
        format.json { render json: @course_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_histories/1
  # DELETE /course_histories/1.json
  def destroy
    @course_history.destroy
    respond_to do |format|
      format.html { redirect_to course_histories_url, notice: 'Course history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_history
      @course_history = CourseHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_history_params
      params.fetch(:course_history, {})
    end
end
