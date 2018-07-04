class NewcitiesController < ApplicationController
  before_action :set_newcity, only: [:show, :edit, :update, :destroy]

  
  
  def index
    @newcities = Newcity.all
  end

  
  def show
  end

 
  def new
    @newcity = Newcity.new
  end

  
  def edit
  end

  
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

  
  def destroy
    @newcity.destroy
    respond_to do |format|
      format.html { redirect_to newcities_url, notice: 'Newcity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_newcity
      @newcity = Newcity.find(params[:id])
    end

    def newcity_params
      params.require(:newcity).permit(:cityname, :state)
    end
end
