class CbMilestonesController < ApplicationController
  before_action :set_cb_milestone, only: [:show, :edit, :update, :destroy]

  # GET /cb_milestones
  # GET /cb_milestones.json
  def index
    @cb_milestones = CbMilestone.all
  end

  # GET /cb_milestones/1
  # GET /cb_milestones/1.json
  def show
  end

  # GET /cb_milestones/new
  def new
    @cb_milestone = CbMilestone.new
  end

  # GET /cb_milestones/1/edit
  def edit
  end

  # POST /cb_milestones
  # POST /cb_milestones.json
  def create
    @cb_milestone = CbMilestone.new(cb_milestone_params)

    respond_to do |format|
      if @cb_milestone.save
        format.html { redirect_to @cb_milestone, notice: 'Cb milestone was successfully created.' }
        format.json { render :show, status: :created, location: @cb_milestone }
      else
        format.html { render :new }
        format.json { render json: @cb_milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_milestones/1
  # PATCH/PUT /cb_milestones/1.json
  def update
    respond_to do |format|
      if @cb_milestone.update(cb_milestone_params)
        format.html { redirect_to @cb_milestone, notice: 'Cb milestone was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_milestone }
      else
        format.html { render :edit }
        format.json { render json: @cb_milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_milestones/1
  # DELETE /cb_milestones/1.json
  def destroy
    @cb_milestone.destroy
    respond_to do |format|
      format.html { redirect_to cb_milestones_url, notice: 'Cb milestone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_milestone
      @cb_milestone = CbMilestone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_milestone_params
      params.require(:cb_milestone).permit(:object_id, :milestone_at, :milestone_code, :description, :source_url, :source_description)
    end
end
