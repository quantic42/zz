class CbAcquisitionsController < ApplicationController
  before_action :set_cb_acquisition, only: [:show, :edit, :update, :destroy]

  # GET /cb_acquisitions
  # GET /cb_acquisitions.json
  def index
    @cb_acquisitions = CbAcquisition.all
  end

  # GET /cb_acquisitions/1
  # GET /cb_acquisitions/1.json
  def show
  end

  # GET /cb_acquisitions/new
  def new
    @cb_acquisition = CbAcquisition.new
  end

  # GET /cb_acquisitions/1/edit
  def edit
  end

  # POST /cb_acquisitions
  # POST /cb_acquisitions.json
  def create
    @cb_acquisition = CbAcquisition.new(cb_acquisition_params)

    respond_to do |format|
      if @cb_acquisition.save
        format.html { redirect_to @cb_acquisition, notice: 'Cb acquisition was successfully created.' }
        format.json { render :show, status: :created, location: @cb_acquisition }
      else
        format.html { render :new }
        format.json { render json: @cb_acquisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_acquisitions/1
  # PATCH/PUT /cb_acquisitions/1.json
  def update
    respond_to do |format|
      if @cb_acquisition.update(cb_acquisition_params)
        format.html { redirect_to @cb_acquisition, notice: 'Cb acquisition was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_acquisition }
      else
        format.html { render :edit }
        format.json { render json: @cb_acquisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_acquisitions/1
  # DELETE /cb_acquisitions/1.json
  def destroy
    @cb_acquisition.destroy
    respond_to do |format|
      format.html { redirect_to cb_acquisitions_url, notice: 'Cb acquisition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_acquisition
      @cb_acquisition = CbAcquisition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_acquisition_params
      params.require(:cb_acquisition).permit(:acquisition_id, :acquiring_object_id, :acquired_object_id, :term_code, :price_amount, :price_currency_code, :acquired_at, :source_url, :source_description)
    end
end
