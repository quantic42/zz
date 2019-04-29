class CbOfficesController < ApplicationController
  before_action :set_cb_office, only: [:show, :edit, :update, :destroy]

  # GET /cb_offices
  # GET /cb_offices.json
  def index
    @cb_offices = CbOffice.all
  end

  # GET /cb_offices/1
  # GET /cb_offices/1.json
  def show
  end

  # GET /cb_offices/new
  def new
    @cb_office = CbOffice.new
  end

  # GET /cb_offices/1/edit
  def edit
  end

  # POST /cb_offices
  # POST /cb_offices.json
  def create
    @cb_office = CbOffice.new(cb_office_params)

    respond_to do |format|
      if @cb_office.save
        format.html { redirect_to @cb_office, notice: 'Cb office was successfully created.' }
        format.json { render :show, status: :created, location: @cb_office }
      else
        format.html { render :new }
        format.json { render json: @cb_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_offices/1
  # PATCH/PUT /cb_offices/1.json
  def update
    respond_to do |format|
      if @cb_office.update(cb_office_params)
        format.html { redirect_to @cb_office, notice: 'Cb office was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_office }
      else
        format.html { render :edit }
        format.json { render json: @cb_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_offices/1
  # DELETE /cb_offices/1.json
  def destroy
    @cb_office.destroy
    respond_to do |format|
      format.html { redirect_to cb_offices_url, notice: 'Cb office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_office
      @cb_office = CbOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_office_params
      params.require(:cb_office).permit(:object_id, :office_id, :description, :region, :address1, :address2, :city, :zip_code, :state_code, :country_code, :latitude, :longitude)
    end
end
