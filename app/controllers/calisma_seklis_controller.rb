class CalismaSeklisController < ApplicationController
  before_action :set_calisma_sekli, only: [:show, :edit, :update, :destroy]

  # GET /calisma_seklis
  # GET /calisma_seklis.json
  def index
    @calisma_seklis = CalismaSekli.all
  end

  # GET /calisma_seklis/1
  # GET /calisma_seklis/1.json
  def show
  end

  # GET /calisma_seklis/new
  def new
    @calisma_sekli = CalismaSekli.new
  end

  # GET /calisma_seklis/1/edit
  def edit
  end

  # POST /calisma_seklis
  # POST /calisma_seklis.json
  def create
    @calisma_sekli = CalismaSekli.new(calisma_sekli_params)

    respond_to do |format|
      if @calisma_sekli.save
        format.html { redirect_to @calisma_sekli, notice: 'Calisma sekli was successfully created.' }
        format.json { render :show, status: :created, location: @calisma_sekli }
      else
        format.html { render :new }
        format.json { render json: @calisma_sekli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calisma_seklis/1
  # PATCH/PUT /calisma_seklis/1.json
  def update
    respond_to do |format|
      if @calisma_sekli.update(calisma_sekli_params)
        format.html { redirect_to @calisma_sekli, notice: 'Calisma sekli was successfully updated.' }
        format.json { render :show, status: :ok, location: @calisma_sekli }
      else
        format.html { render :edit }
        format.json { render json: @calisma_sekli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calisma_seklis/1
  # DELETE /calisma_seklis/1.json
  def destroy
    @calisma_sekli.destroy
    respond_to do |format|
      format.html { redirect_to calisma_seklis_url, notice: 'Calisma sekli was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calisma_sekli
      @calisma_sekli = CalismaSekli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calisma_sekli_params
      params.require(:calisma_sekli).permit(:icerik)
    end
end