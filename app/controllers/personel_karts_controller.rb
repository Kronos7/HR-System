class PersonelKartsController < ApplicationController
  before_action :set_personel_kart, only: [:show, :edit, :update, :destroy]

  # GET /personel_karts
  # GET /personel_karts.json
  def index
    @personel_karts = PersonelKart.all
  end

  # GET /personel_karts/1
  # GET /personel_karts/1.json
  def show
  end

  # GET /personel_karts/new
  def new
    @personel_kart = PersonelKart.new
  end

  # GET /personel_karts/1/edit
  def edit
  end

  # POST /personel_karts
  # POST /personel_karts.json
  def create
    @personel_kart = PersonelKart.new(personel_kart_params)

    respond_to do |format|
      if @personel_kart.save
        format.html { redirect_to @personel_kart, notice: 'Personel kart was successfully created.' }
        format.json { render :show, status: :created, location: @personel_kart }
      else
        format.html { render :new }
        format.json { render json: @personel_kart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personel_karts/1
  # PATCH/PUT /personel_karts/1.json
  def update
    respond_to do |format|
      if @personel_kart.update(personel_kart_params)
        format.html { redirect_to @personel_kart, notice: 'Personel kart was successfully updated.' }
        format.json { render :show, status: :ok, location: @personel_kart }
      else
        format.html { render :edit }
        format.json { render json: @personel_kart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personel_karts/1
  # DELETE /personel_karts/1.json
  def destroy
    @personel_kart.destroy
    respond_to do |format|
      format.html { redirect_to personel_karts_url, notice: 'Personel kart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personel_kart
      @personel_kart = PersonelKart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personel_kart_params
      params.require(:personel_kart).permit(:personel_id, :isim, :soyisim, :tc_kimlik, :dogum_tarihi, :baba_adi, :anne_adi, :ehliyet_no, :lise, :universite, :cep_no, :ev_no, :adres, :proje_bil, :sinav_bil, :bilgisayar_bil, :kan_gr)
    end
end
