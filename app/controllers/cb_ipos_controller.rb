class CbIposController < ApplicationController
  before_action :set_cb_ipo, only: [:show, :edit, :update, :destroy]

  # GET /cb_ipos
  # GET /cb_ipos.json
  def index
    @cb_ipos = CbIpo.all
  end

  # GET /cb_ipos/1
  # GET /cb_ipos/1.json
  def show
  end

  # GET /cb_ipos/new
  def new
    @cb_ipo = CbIpo.new
  end

  # GET /cb_ipos/1/edit
  def edit
  end

  # POST /cb_ipos
  # POST /cb_ipos.json
  def create
    @cb_ipo = CbIpo.new(cb_ipo_params)

    respond_to do |format|
      if @cb_ipo.save
        format.html { redirect_to @cb_ipo, notice: 'Cb ipo was successfully created.' }
        format.json { render :show, status: :created, location: @cb_ipo }
      else
        format.html { render :new }
        format.json { render json: @cb_ipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_ipos/1
  # PATCH/PUT /cb_ipos/1.json
  def update
    respond_to do |format|
      if @cb_ipo.update(cb_ipo_params)
        format.html { redirect_to @cb_ipo, notice: 'Cb ipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_ipo }
      else
        format.html { render :edit }
        format.json { render json: @cb_ipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_ipos/1
  # DELETE /cb_ipos/1.json
  def destroy
    @cb_ipo.destroy
    respond_to do |format|
      format.html { redirect_to cb_ipos_url, notice: 'Cb ipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_ipo
      @cb_ipo = CbIpo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_ipo_params
      params.require(:cb_ipo).permit(:ipo_id, :object_id, :valuation_amount, :valuation_currency_code, :raised_amount, :raised_currency_code, :public_at, :stock_symbol, :source_url, :source_description)
    end
end
