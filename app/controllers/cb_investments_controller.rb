class CbInvestmentsController < ApplicationController
  before_action :set_cb_investment, only: [:show, :edit, :update, :destroy]

  # GET /cb_investments
  # GET /cb_investments.json
  def index
    @cb_investments = CbInvestment.all
  end

  # GET /cb_investments/1
  # GET /cb_investments/1.json
  def show
  end

  # GET /cb_investments/new
  def new
    @cb_investment = CbInvestment.new
  end

  # GET /cb_investments/1/edit
  def edit
  end

  # POST /cb_investments
  # POST /cb_investments.json
  def create
    @cb_investment = CbInvestment.new(cb_investment_params)

    respond_to do |format|
      if @cb_investment.save
        format.html { redirect_to @cb_investment, notice: 'Cb investment was successfully created.' }
        format.json { render :show, status: :created, location: @cb_investment }
      else
        format.html { render :new }
        format.json { render json: @cb_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_investments/1
  # PATCH/PUT /cb_investments/1.json
  def update
    respond_to do |format|
      if @cb_investment.update(cb_investment_params)
        format.html { redirect_to @cb_investment, notice: 'Cb investment was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_investment }
      else
        format.html { render :edit }
        format.json { render json: @cb_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_investments/1
  # DELETE /cb_investments/1.json
  def destroy
    @cb_investment.destroy
    respond_to do |format|
      format.html { redirect_to cb_investments_url, notice: 'Cb investment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_investment
      @cb_investment = CbInvestment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_investment_params
      params.require(:cb_investment).permit(:funding_round_id, :funded_object_id, :investor_object_id)
    end
end
