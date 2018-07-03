class AddCompaniesController < ApplicationController
  before_action :set_add_company, only: [:show, :edit, :update, :destroy]

  
  def index
    @add_companies = AddCompany.all
  end

  
  def show
  end

  def new
    @add_company = AddCompany.new
  end

  def edit
  end

  
  def create
    @add_company = AddCompany.new(add_company_params)

    respond_to do |format|
      if @add_company.save
        format.html { redirect_to @add_company, notice: 'Add company was successfully created.' }
        format.json { render :show, status: :created, location: @add_company }
      else
        format.html { render :new }
        format.json { render json: @add_company.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @add_company.update(add_company_params)
        format.html { redirect_to @add_company, notice: 'Add company was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_company }
      else
        format.html { render :edit }
        format.json { render json: @add_company.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @add_company.destroy
    respond_to do |format|
      format.html { redirect_to add_companies_url, notice: 'Add company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_add_company
      @add_company = AddCompany.find(params[:id])
    end

    def add_company_params
      params.require(:add_company).permit(:company, :country, :state, :city, :postcode, :startdate, :active)
    end
end
