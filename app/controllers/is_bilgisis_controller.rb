class IsBilgisisController < ApplicationController
  before_action :set_is_bilgisi, only: [:show, :edit, :update, :destroy]

  # GET /is_bilgisis
  # GET /is_bilgisis.json
  def index
    @is_bilgisis = IsBilgisi.all
  end

  # GET /is_bilgisis/1
  # GET /is_bilgisis/1.json
  def show
  end

  # GET /is_bilgisis/new
  def new
    @is_bilgisi = IsBilgisi.new
  end

  # GET /is_bilgisis/1/edit
  def edit
  end

  # POST /is_bilgisis
  # POST /is_bilgisis.json
  def create
    @is_bilgisi = IsBilgisi.new(is_bilgisi_params)

    respond_to do |format|
      if @is_bilgisi.save
        format.html { redirect_to @is_bilgisi, notice: 'Is bilgisi was successfully created.' }
        format.json { render :show, status: :created, location: @is_bilgisi }
      else
        format.html { render :new }
        format.json { render json: @is_bilgisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /is_bilgisis/1
  # PATCH/PUT /is_bilgisis/1.json
  def update
    respond_to do |format|
      if @is_bilgisi.update(is_bilgisi_params)
        format.html { redirect_to @is_bilgisi, notice: 'Is bilgisi was successfully updated.' }
        format.json { render :show, status: :ok, location: @is_bilgisi }
      else
        format.html { render :edit }
        format.json { render json: @is_bilgisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /is_bilgisis/1
  # DELETE /is_bilgisis/1.json
  def destroy
    @is_bilgisi.destroy
    respond_to do |format|
      format.html { redirect_to is_bilgisis_url, notice: 'Is bilgisi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_is_bilgisi
      @is_bilgisi = IsBilgisi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def is_bilgisi_params
      params.require(:is_bilgisi).permit(:personel_id, :calisma_sekli, :haftalik_saat, :unvan, :birim, :lokasyon)
    end
end
