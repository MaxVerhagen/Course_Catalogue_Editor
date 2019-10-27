class OfferingHistoriesController < ApplicationController
  before_action :set_offering_history, only: [:show, :edit, :update, :destroy]

  # GET /offering_histories
  # GET /offering_histories.json
  def index
    @offering_histories = OfferingHistory.all
  end

  # GET /offering_histories/1
  # GET /offering_histories/1.json
  def show
  end

  # GET /offering_histories/new
  def new
    @offering_history = OfferingHistory.new
  end

  # GET /offering_histories/1/edit
  def edit
  end

  # POST /offering_histories
  # POST /offering_histories.json
  def create
    @offering_history = OfferingHistory.new(offering_history_params)

    respond_to do |format|
      if @offering_history.save
        format.html { redirect_to @offering_history, notice: 'Offering history was successfully created.' }
        format.json { render :show, status: :created, location: @offering_history }
      else
        format.html { render :new }
        format.json { render json: @offering_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offering_histories/1
  # PATCH/PUT /offering_histories/1.json
  def update
    respond_to do |format|
      if @offering_history.update(offering_history_params)
        format.html { redirect_to @offering_history, notice: 'Offering history was successfully updated.' }
        format.json { render :show, status: :ok, location: @offering_history }
      else
        format.html { render :edit }
        format.json { render json: @offering_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offering_histories/1
  # DELETE /offering_histories/1.json
  def destroy
    @offering_history.destroy
    respond_to do |format|
      format.html { redirect_to offering_histories_url, notice: 'Offering history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offering_history
      @offering_history = OfferingHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offering_history_params
      params.fetch(:offering_history, {})
    end
end
