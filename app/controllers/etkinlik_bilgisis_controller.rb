class EtkinlikBilgisisController < ApplicationController
  before_action :set_etkinlik_bilgisi, only: [:show, :edit, :update, :destroy]

  # GET /etkinlik_bilgisis
  # GET /etkinlik_bilgisis.json
  def index
    @etkinlik_bilgisis = EtkinlikBilgisi.all
  end

  # GET /etkinlik_bilgisis/1
  # GET /etkinlik_bilgisis/1.json
  def show
  end

  # GET /etkinlik_bilgisis/new
  def new
    @etkinlik_bilgisi = EtkinlikBilgisi.new
  end

  # GET /etkinlik_bilgisis/1/edit
  def edit
  end

  # POST /etkinlik_bilgisis
  # POST /etkinlik_bilgisis.json
  def create
    @etkinlik_bilgisi = EtkinlikBilgisi.new(etkinlik_bilgisi_params)

    respond_to do |format|
      if @etkinlik_bilgisi.save
        format.html { redirect_to @etkinlik_bilgisi, notice: 'Etkinlik bilgisi was successfully created.' }
        format.json { render :show, status: :created, location: @etkinlik_bilgisi }
      else
        format.html { render :new }
        format.json { render json: @etkinlik_bilgisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etkinlik_bilgisis/1
  # PATCH/PUT /etkinlik_bilgisis/1.json
  def update
    respond_to do |format|
      if @etkinlik_bilgisi.update(etkinlik_bilgisi_params)
        format.html { redirect_to @etkinlik_bilgisi, notice: 'Etkinlik bilgisi was successfully updated.' }
        format.json { render :show, status: :ok, location: @etkinlik_bilgisi }
      else
        format.html { render :edit }
        format.json { render json: @etkinlik_bilgisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etkinlik_bilgisis/1
  # DELETE /etkinlik_bilgisis/1.json
  def destroy
    @etkinlik_bilgisi.destroy
    respond_to do |format|
      format.html { redirect_to etkinlik_bilgisis_url, notice: 'Etkinlik bilgisi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etkinlik_bilgisi
      @etkinlik_bilgisi = EtkinlikBilgisi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etkinlik_bilgisi_params
      params.require(:etkinlik_bilgisi).permit(:personel_id, :baslangic, :bitis, :etkinlik)
    end
end
