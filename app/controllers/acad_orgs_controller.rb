class AcadOrgsController < ApplicationController
  before_action :set_acad_org, only: [:show, :edit, :update, :destroy]

  # GET /acad_orgs
  # GET /acad_orgs.json
  def index
    @acad_orgs = AcadOrg.all
  end

  # GET /acad_orgs/1
  # GET /acad_orgs/1.json
  def show
  end

  # GET /acad_orgs/new
  def new
    @acad_org = AcadOrg.new
  end

  # GET /acad_orgs/1/edit
  def edit
  end

  # POST /acad_orgs
  # POST /acad_orgs.json
  def create
    @acad_org = AcadOrg.new(acad_org_params)

    respond_to do |format|
      if @acad_org.save
        format.html { redirect_to @acad_org, notice: 'Acad org was successfully created.' }
        format.json { render :show, status: :created, location: @acad_org }
      else
        format.html { render :new }
        format.json { render json: @acad_org.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acad_orgs/1
  # PATCH/PUT /acad_orgs/1.json
  def update
    respond_to do |format|
      if @acad_org.update(acad_org_params)
        format.html { redirect_to @acad_org, notice: 'Acad org was successfully updated.' }
        format.json { render :show, status: :ok, location: @acad_org }
      else
        format.html { render :edit }
        format.json { render json: @acad_org.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acad_orgs/1
  # DELETE /acad_orgs/1.json
  def destroy
    @acad_org.destroy
    respond_to do |format|
      format.html { redirect_to acad_orgs_url, notice: 'Acad org was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acad_org
      @acad_org = AcadOrg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acad_org_params
      params.fetch(:acad_org, {})
    end
end
