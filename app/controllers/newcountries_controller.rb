class NewcountriesController < ApplicationController
  before_action :set_newcountry, only: [:show, :edit, :update, :destroy]

  
  def index
    @newcountries = Newcountry.all
  end

  
  def show
  end

  
  def new
    @newcountry = Newcountry.new
  end

  def edit
  end

  
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

  
  def destroy
    @newcountry.destroy
    respond_to do |format|
      format.html { redirect_to newcountries_url, notice: 'Newcountry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_newcountry
      @newcountry = Newcountry.find(params[:id])
    end

    def newcountry_params
      params.require(:newcountry).permit(:countryname, :code)
    end
end
