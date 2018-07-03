class NewplacesController < ApplicationController
  before_action :set_newplace, only: [:show, :edit, :update, :destroy]

  # GET /newplaces
  # GET /newplaces.json
  def index
    @newplaces = Newplace.all
  end

  # GET /newplaces/1
  # GET /newplaces/1.json
  def show
  end

  # GET /newplaces/new
  def new
    @newplace = Newplace.new
  end

  # GET /newplaces/1/edit
  def edit
  end

  # POST /newplaces
  # POST /newplaces.json
  def create
    @newplace = Newplace.new(newplace_params)

    respond_to do |format|
      if @newplace.save
        format.html { redirect_to @newplace, notice: 'Newplace was successfully created.' }
        format.json { render :show, status: :created, location: @newplace }
      else
        format.html { render :new }
        format.json { render json: @newplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newplaces/1
  # PATCH/PUT /newplaces/1.json
  def update
    respond_to do |format|
      if @newplace.update(newplace_params)
        format.html { redirect_to @newplace, notice: 'Newplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @newplace }
      else
        format.html { render :edit }
        format.json { render json: @newplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newplaces/1
  # DELETE /newplaces/1.json
  def destroy
    @newplace.destroy
    respond_to do |format|
      format.html { redirect_to newplaces_url, notice: 'Newplace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newplace
      @newplace = Newplace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newplace_params
      params.require(:newplace).permit(:nodename, :placename, :nodename, :company)
    end
end
