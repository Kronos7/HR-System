class PersonelsController < ApplicationController
  before_action :set_personel, only: [:show, :edit, :update, :destroy]

  # GET /personels
  # GET /personels.json
  def index
    @personels = Personel.all
  end

  # GET /personels/1
  # GET /personels/1.json
  def show
  end

  # GET /personels/new
  def new
    @personel = Personel.new
  end

  # GET /personels/1/edit
  def edit
  end

  # POST /personels
  # POST /personels.json
  def create
    @personel = Personel.new(personel_params)

    respond_to do |format|
      if @personel.save
        format.html { redirect_to @personel, notice: 'Personel was successfully created.' }
        format.json { render :show, status: :created, location: @personel }
      else
        format.html { render :new }
        format.json { render json: @personel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personels/1
  # PATCH/PUT /personels/1.json
  def update
    respond_to do |format|
      if @personel.update(personel_params)
        format.html { redirect_to @personel, notice: 'Personel was successfully updated.' }
        format.json { render :show, status: :ok, location: @personel }
      else
        format.html { render :edit }
        format.json { render json: @personel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personels/1
  # DELETE /personels/1.json
  def destroy
    @personel.destroy
    respond_to do |format|
      format.html { redirect_to personels_url, notice: 'Personel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personel
      @personel = Personel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personel_params
      params[:personel]
    end
end
