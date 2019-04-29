class CbDegreesController < ApplicationController
  before_action :set_cb_degree, only: [:show, :edit, :update, :destroy]

  # GET /cb_degrees
  # GET /cb_degrees.json
  def index
    @cb_degrees = CbDegree.all
  end

  # GET /cb_degrees/1
  # GET /cb_degrees/1.json
  def show
  end

  # GET /cb_degrees/new
  def new
    @cb_degree = CbDegree.new
  end

  # GET /cb_degrees/1/edit
  def edit
  end

  # POST /cb_degrees
  # POST /cb_degrees.json
  def create
    @cb_degree = CbDegree.new(cb_degree_params)

    respond_to do |format|
      if @cb_degree.save
        format.html { redirect_to @cb_degree, notice: 'Cb degree was successfully created.' }
        format.json { render :show, status: :created, location: @cb_degree }
      else
        format.html { render :new }
        format.json { render json: @cb_degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_degrees/1
  # PATCH/PUT /cb_degrees/1.json
  def update
    respond_to do |format|
      if @cb_degree.update(cb_degree_params)
        format.html { redirect_to @cb_degree, notice: 'Cb degree was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_degree }
      else
        format.html { render :edit }
        format.json { render json: @cb_degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_degrees/1
  # DELETE /cb_degrees/1.json
  def destroy
    @cb_degree.destroy
    respond_to do |format|
      format.html { redirect_to cb_degrees_url, notice: 'Cb degree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_degree
      @cb_degree = CbDegree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_degree_params
      params.require(:cb_degree).permit(:object_id, :degree_type, :subject, :institution, :graduated_at)
    end
end
