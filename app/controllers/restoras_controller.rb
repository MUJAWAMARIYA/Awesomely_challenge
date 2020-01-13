class RestorasController < ApplicationController
  before_action :set_restora, only: [:show, :edit, :update, :destroy]

  # GET /restoras
  # GET /restoras.json
  def index
    @restoras = Restora.all
  end

  # GET /restoras/1
  # GET /restoras/1.json
  def show
  end

  # GET /restoras/new
  def new
    @restora = Restora.new
  end

  # GET /restoras/1/edit
  def edit
  end

  # POST /restoras
  # POST /restoras.json
  def create
    @restora = Restora.new(restora_params)

    respond_to do |format|
      if @restora.save
        format.html { redirect_to @restora, notice: 'Restora was successfully created.' }
        format.json { render :show, status: :created, location: @restora }
      else
        format.html { render :new }
        format.json { render json: @restora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restoras/1
  # PATCH/PUT /restoras/1.json
  def update
    respond_to do |format|
      if @restora.update(restora_params)
        format.html { redirect_to @restora, notice: 'Restora was successfully updated.' }
        format.json { render :show, status: :ok, location: @restora }
      else
        format.html { render :edit }
        format.json { render json: @restora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restoras/1
  # DELETE /restoras/1.json
  def destroy
    @restora.destroy
    respond_to do |format|
      format.html { redirect_to restoras_url, notice: 'Restora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restora
      @restora = Restora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restora_params
      params.require(:restora).permit(:name, :location)
    end
end
