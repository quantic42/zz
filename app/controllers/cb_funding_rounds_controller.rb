class CbFundingRoundsController < ApplicationController
  before_action :set_cb_funding_round, only: [:show, :edit, :update, :destroy]

  # GET /cb_funding_rounds
  # GET /cb_funding_rounds.json
  def index
    @cb_funding_rounds = CbFundingRound.all
  end

  # GET /cb_funding_rounds/1
  # GET /cb_funding_rounds/1.json
  def show
  end

  # GET /cb_funding_rounds/new
  def new
    @cb_funding_round = CbFundingRound.new
  end

  # GET /cb_funding_rounds/1/edit
  def edit
  end

  # POST /cb_funding_rounds
  # POST /cb_funding_rounds.json
  def create
    @cb_funding_round = CbFundingRound.new(cb_funding_round_params)

    respond_to do |format|
      if @cb_funding_round.save
        format.html { redirect_to @cb_funding_round, notice: 'Cb funding round was successfully created.' }
        format.json { render :show, status: :created, location: @cb_funding_round }
      else
        format.html { render :new }
        format.json { render json: @cb_funding_round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_funding_rounds/1
  # PATCH/PUT /cb_funding_rounds/1.json
  def update
    respond_to do |format|
      if @cb_funding_round.update(cb_funding_round_params)
        format.html { redirect_to @cb_funding_round, notice: 'Cb funding round was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_funding_round }
      else
        format.html { render :edit }
        format.json { render json: @cb_funding_round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_funding_rounds/1
  # DELETE /cb_funding_rounds/1.json
  def destroy
    @cb_funding_round.destroy
    respond_to do |format|
      format.html { redirect_to cb_funding_rounds_url, notice: 'Cb funding round was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_funding_round
      @cb_funding_round = CbFundingRound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_funding_round_params
      params.require(:cb_funding_round).permit(:funding_round_id, :object_id, :funded_at, :funding_round_type, :funding_round_code, :raised_amount_usd, :raised_amount, :raised_currency_code, :pre_money_valuation_usd, :pre_money_valuation, :pre_money_currency_code, :post_money_valuation_usd, :post_money_valuation, :post_money_currency_code, :participants, :is_first_round, :is_last_round, :source_url, :source_description, :created_by)
    end
end
