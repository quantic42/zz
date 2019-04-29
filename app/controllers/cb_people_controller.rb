class CbPeopleController < ApplicationController
  before_action :set_cb_person, only: [:show, :edit, :update, :destroy]

  # GET /cb_people
  # GET /cb_people.json
  def index
    @cb_people = CbPerson.all
  end

  # GET /cb_people/1
  # GET /cb_people/1.json
  def show
  end

  # GET /cb_people/new
  def new
    @cb_person = CbPerson.new
  end

  # GET /cb_people/1/edit
  def edit
  end

  # POST /cb_people
  # POST /cb_people.json
  def create
    @cb_person = CbPerson.new(cb_person_params)

    respond_to do |format|
      if @cb_person.save
        format.html { redirect_to @cb_person, notice: 'Cb person was successfully created.' }
        format.json { render :show, status: :created, location: @cb_person }
      else
        format.html { render :new }
        format.json { render json: @cb_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cb_people/1
  # PATCH/PUT /cb_people/1.json
  def update
    respond_to do |format|
      if @cb_person.update(cb_person_params)
        format.html { redirect_to @cb_person, notice: 'Cb person was successfully updated.' }
        format.json { render :show, status: :ok, location: @cb_person }
      else
        format.html { render :edit }
        format.json { render json: @cb_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_people/1
  # DELETE /cb_people/1.json
  def destroy
    @cb_person.destroy
    respond_to do |format|
      format.html { redirect_to cb_people_url, notice: 'Cb person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cb_person
      @cb_person = CbPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cb_person_params
      params.require(:cb_person).permit(:object_id, :first_name, :last_name, :birthplace, :affiliation_name)
    end
end
