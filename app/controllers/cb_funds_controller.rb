class CbFundsController < ApplicationController
  before_action :set_cb_fund, only: [:show, :edit, :update, :destroy]

  # GET /cb_funds
  # GET /cb_funds.json
  def index
    @cb_funds = CbFund.all
  end

  # GET /cb_funds/1
  # GET /cb_funds/1.json
  def show
  end

  # GET /cb_funds/new
  def new
    @cb_fund = CbFund.new
  end

  # GET /cb_funds/1/edit
  def edit
  end

  # POST /cb_funds
  # POST /cb_funds.json
  def create
    @cb_fund = CbFund.new(cb_fund_params)

    respond_to do |format|
      if @cb_fund.save
        format.html { redirect_to @cb_fund, notice: 'Cb fund was successfully created.' }
        format.json { render :show, status: :created, location: @cb_fund }
      else
        format.html { render :new }
        format.json { render json: @cb_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_funds/1
  # PATCH/PUT /cb_funds/1.json
  def update
    respond_to do |format|
      if @cb_fund.update(cb_fund_params)
        format.html { redirect_to @cb_fund, notice: 'Cb fund was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_fund }
      else
        format.html { render :edit }
        format.json { render json: @cb_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_funds/1
  # DELETE /cb_funds/1.json
  def destroy
    @cb_fund.destroy
    respond_to do |format|
      format.html { redirect_to cb_funds_url, notice: 'Cb fund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_fund
      @cb_fund = CbFund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_fund_params
      params.require(:cb_fund).permit(:fund_id, :object_id, :name, :funded_at, :raised_amount, :raised_currency_code, :source_url, :source_description)
    end
end
