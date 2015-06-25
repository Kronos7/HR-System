class LokasyonsController < ApplicationController
  before_action :set_lokasyon, only: [:show, :edit, :update, :destroy]

  # GET /lokasyons
  # GET /lokasyons.json
  def index
    @lokasyons = Lokasyon.all
  end

  # GET /lokasyons/1
  # GET /lokasyons/1.json
  def show
  end

  # GET /lokasyons/new
  def new
    @lokasyon = Lokasyon.new
  end

  # GET /lokasyons/1/edit
  def edit
  end

  # POST /lokasyons
  # POST /lokasyons.json
  def create
    @lokasyon = Lokasyon.new(lokasyon_params)

    respond_to do |format|
      if @lokasyon.save
        format.html { redirect_to @lokasyon, notice: 'Lokasyon was successfully created.' }
        format.json { render :show, status: :created, location: @lokasyon }
      else
        format.html { render :new }
        format.json { render json: @lokasyon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lokasyons/1
  # PATCH/PUT /lokasyons/1.json
  def update
    respond_to do |format|
      if @lokasyon.update(lokasyon_params)
        format.html { redirect_to @lokasyon, notice: 'Lokasyon was successfully updated.' }
        format.json { render :show, status: :ok, location: @lokasyon }
      else
        format.html { render :edit }
        format.json { render json: @lokasyon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lokasyons/1
  # DELETE /lokasyons/1.json
  def destroy
    @lokasyon.destroy
    respond_to do |format|
      format.html { redirect_to lokasyons_url, notice: 'Lokasyon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lokasyon
      @lokasyon = Lokasyon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lokasyon_params
      params.require(:lokasyon).permit(:icerik)
    end
end
