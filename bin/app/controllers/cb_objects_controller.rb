class CbObjectsController < ApplicationController
  before_action :set_cb_object, only: [:show, :edit, :update, :destroy]

  # GET /cb_objects
  # GET /cb_objects.json
  def index
    @cb_objects = CbObject.all
  end

  # GET /cb_objects/1
  # GET /cb_objects/1.json
  def show
    @cb_object = CbObject.find(params[:id])
  end

  # GET /cb_objects/new
  def new
    @cb_object = CbObject.new
  end

  # GET /cb_objects/1/edit
  def edit
  end

  # POST /cb_objects
  # POST /cb_objects.json
  def create
    @cb_object = CbObject.new(cb_object_params)

    respond_to do |format|
      if @cb_object.save
        format.html { redirect_to @cb_object, notice: 'Cb object was successfully created.' }
        format.json { render :show, status: :created, location: @cb_object }
      else
        format.html { render :new }
        format.json { render json: @cb_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_objects/1
  # PATCH/PUT /cb_objects/1.json
  def update
    respond_to do |format|
      if @cb_object.update(cb_object_params)
        format.html { redirect_to @cb_object, notice: 'Cb object was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_object }
      else
        format.html { render :edit }
        format.json { render json: @cb_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_objects/1
  # DELETE /cb_objects/1.json
  def destroy
    @cb_object.destroy
    respond_to do |format|
      format.html { redirect_to cb_objects_url, notice: 'Cb object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_object
      @cb_object = CbObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_object_params
      params.require(:cb_object).permit(:entity_type, :entity_id, :parent_id, :name, :normalized_name, :permalink, :category_code, :status, :founded_at, :closed_at, :domain, :homepage_url, :twitter_username, :logo_url, :logo_width, :logo_height, :short_description, :description, :overview, :tag_list, :country_code, :state_code, :city, :region, :first_investment_at, :last_investment_at, :investment_rounds, :invested_companies, :first_funding_at, :last_funding_at, :funding_rounds, :funding_total_usd, :first_milestone_at, :last_milestone_at, :milestones, :relationships, :created_by)
    end
end
