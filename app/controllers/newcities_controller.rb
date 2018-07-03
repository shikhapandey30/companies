class NewcitiesController < ApplicationController
  before_action :set_newcity, only: [:show, :edit, :update, :destroy]

  # GET /newcities
  # GET /newcities.json
  def index
    @newcities = Newcity.all
  end

  # GET /newcities/1
  # GET /newcities/1.json
  def show
  end

  # GET /newcities/new
  def new
    @newcity = Newcity.new
  end

  # GET /newcities/1/edit
  def edit
  end

  # POST /newcities
  # POST /newcities.json
  def create
    @newcity = Newcity.new(newcity_params)

    respond_to do |format|
      if @newcity.save
        format.html { redirect_to @newcity, notice: 'Newcity was successfully created.' }
        format.json { render :show, status: :created, location: @newcity }
      else
        format.html { render :new }
        format.json { render json: @newcity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newcities/1
  # PATCH/PUT /newcities/1.json
  def update
    respond_to do |format|
      if @newcity.update(newcity_params)
        format.html { redirect_to @newcity, notice: 'Newcity was successfully updated.' }
        format.json { render :show, status: :ok, location: @newcity }
      else
        format.html { render :edit }
        format.json { render json: @newcity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newcities/1
  # DELETE /newcities/1.json
  def destroy
    @newcity.destroy
    respond_to do |format|
      format.html { redirect_to newcities_url, notice: 'Newcity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newcity
      @newcity = Newcity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newcity_params
      params.require(:newcity).permit(:cityname, :state)
    end
end
