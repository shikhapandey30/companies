class NewcountriesController < ApplicationController
  before_action :set_newcountry, only: [:show, :edit, :update, :destroy]

  # GET /newcountries
  # GET /newcountries.json
  def index
    @newcountries = Newcountry.all
  end

  # GET /newcountries/1
  # GET /newcountries/1.json
  def show
  end

  # GET /newcountries/new
  def new
    @newcountry = Newcountry.new
  end

  # GET /newcountries/1/edit
  def edit
  end

  # POST /newcountries
  # POST /newcountries.json
  def create
    @newcountry = Newcountry.new(newcountry_params)

    respond_to do |format|
      if @newcountry.save
        format.html { redirect_to @newcountry, notice: 'Newcountry was successfully created.' }
        format.json { render :show, status: :created, location: @newcountry }
      else
        format.html { render :new }
        format.json { render json: @newcountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newcountries/1
  # PATCH/PUT /newcountries/1.json
  def update
    respond_to do |format|
      if @newcountry.update(newcountry_params)
        format.html { redirect_to @newcountry, notice: 'Newcountry was successfully updated.' }
        format.json { render :show, status: :ok, location: @newcountry }
      else
        format.html { render :edit }
        format.json { render json: @newcountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newcountries/1
  # DELETE /newcountries/1.json
  def destroy
    @newcountry.destroy
    respond_to do |format|
      format.html { redirect_to newcountries_url, notice: 'Newcountry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newcountry
      @newcountry = Newcountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newcountry_params
      params.require(:newcountry).permit(:countryname, :code)
    end
end
