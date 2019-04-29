class CbRelationshipsController < ApplicationController
  before_action :set_cb_relationship, only: [:show, :edit, :update, :destroy]

  # GET /cb_relationships
  # GET /cb_relationships.json
  def index
    @cb_relationships = CbRelationship.all
  end

  # GET /cb_relationships/1
  # GET /cb_relationships/1.json
  def show
  end

  # GET /cb_relationships/new
  def new
    @cb_relationship = CbRelationship.new
  end

  # GET /cb_relationships/1/edit
  def edit
  end

  # POST /cb_relationships
  # POST /cb_relationships.json
  def create
    @cb_relationship = CbRelationship.new(cb_relationship_params)

    respond_to do |format|
      if @cb_relationship.save
        format.html { redirect_to @cb_relationship, notice: 'Cb relationship was successfully created.' }
        format.json { render :show, status: :created, location: @cb_relationship }
      else
        format.html { render :new }
        format.json { render json: @cb_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_relationships/1
  # PATCH/PUT /cb_relationships/1.json
  def update
    respond_to do |format|
      if @cb_relationship.update(cb_relationship_params)
        format.html { redirect_to @cb_relationship, notice: 'Cb relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_relationship }
      else
        format.html { render :edit }
        format.json { render json: @cb_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_relationships/1
  # DELETE /cb_relationships/1.json
  def destroy
    @cb_relationship.destroy
    respond_to do |format|
      format.html { redirect_to cb_relationships_url, notice: 'Cb relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_relationship
      @cb_relationship = CbRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_relationship_params
      params.require(:cb_relationship).permit(:relationship_id, :person_object_id, :relationship_object_id, :start_at, :end_at, :is_past, :sequence, :title)
    end
end
