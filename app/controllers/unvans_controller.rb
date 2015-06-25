class UnvansController < ApplicationController
  before_action :set_unvan, only: [:show, :edit, :update, :destroy]

  # GET /unvans
  # GET /unvans.json
  def index
    @unvans = Unvan.all
  end

  # GET /unvans/1
  # GET /unvans/1.json
  def show
  end

  # GET /unvans/new
  def new
    @unvan = Unvan.new
  end

  # GET /unvans/1/edit
  def edit
  end

  # POST /unvans
  # POST /unvans.json
  def create
    @unvan = Unvan.new(unvan_params)

    respond_to do |format|
      if @unvan.save
        format.html { redirect_to @unvan, notice: 'Unvan was successfully created.' }
        format.json { render :show, status: :created, location: @unvan }
      else
        format.html { render :new }
        format.json { render json: @unvan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unvans/1
  # PATCH/PUT /unvans/1.json
  def update
    respond_to do |format|
      if @unvan.update(unvan_params)
        format.html { redirect_to @unvan, notice: 'Unvan was successfully updated.' }
        format.json { render :show, status: :ok, location: @unvan }
      else
        format.html { render :edit }
        format.json { render json: @unvan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unvans/1
  # DELETE /unvans/1.json
  def destroy
    @unvan.destroy
    respond_to do |format|
      format.html { redirect_to unvans_url, notice: 'Unvan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unvan
      @unvan = Unvan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unvan_params
      params.require(:unvan).permit(:icerik)
    end
end
