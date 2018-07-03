class NewregionsController < ApplicationController
  before_action :set_newregion, only: [:show, :edit, :update, :destroy]

  # GET /newregions
  # GET /newregions.json
  def index
    @newregions = Newregion.all
  end

  # GET /newregions/1
  # GET /newregions/1.json
  def show
  end

  # GET /newregions/new
  def new
    @newregion = Newregion.new
  end

  # GET /newregions/1/edit
  def edit
  end

  # POST /newregions
  # POST /newregions.json
  def create
    @newregion = Newregion.new(newregion_params)

    respond_to do |format|
      if @newregion.save
        format.html { redirect_to @newregion, notice: 'Newregion was successfully created.' }
        format.json { render :show, status: :created, location: @newregion }
      else
        format.html { render :new }
        format.json { render json: @newregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newregions/1
  # PATCH/PUT /newregions/1.json
  def update
    respond_to do |format|
      if @newregion.update(newregion_params)
        format.html { redirect_to @newregion, notice: 'Newregion was successfully updated.' }
        format.json { render :show, status: :ok, location: @newregion }
      else
        format.html { render :edit }
        format.json { render json: @newregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newregions/1
  # DELETE /newregions/1.json
  def destroy
    @newregion.destroy
    respond_to do |format|
      format.html { redirect_to newregions_url, notice: 'Newregion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newregion
      @newregion = Newregion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newregion_params
      params.require(:newregion).permit(:regionname)
    end
end
