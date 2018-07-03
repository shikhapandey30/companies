class NewnodesController < ApplicationController
  before_action :set_newnode, only: [:show, :edit, :update, :destroy]

  # GET /newnodes
  # GET /newnodes.json
  def index
    @newnodes = Newnode.all
  end

  # GET /newnodes/1
  # GET /newnodes/1.json
  def show
    
  end

  # GET /newnodes/new
  def new
    @newnode = Newnode.new
  end

  # GET /newnodes/1/edit
  def edit
  end

  # POST /newnodes
  # POST /newnodes.json
  def create
    @newnode = Newnode.new(newnode_params)

    respond_to do |format|
      if @newnode.save
        format.html { redirect_to @newnode, notice: 'Newnode was successfully created.' }
        format.json { render :show, status: :created, location: @newnode }
      else
        format.html { render :new }
        format.json { render json: @newnode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newnodes/1
  # PATCH/PUT /newnodes/1.json
  def update
    respond_to do |format|
      if @newnode.update(newnode_params)
        format.html { redirect_to @newnode, notice: 'Newnode was successfully updated.' }
        format.json { render :show, status: :ok, location: @newnode }
      else
        format.html { render :edit }
        format.json { render json: @newnode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newnodes/1
  # DELETE /newnodes/1.json
  def destroy
    @newnode.destroy
    respond_to do |format|
      format.html { redirect_to newnodes_url, notice: 'Newnode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newnode
      @newnode = Newnode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newnode_params
      params.require(:newnode).permit(:nodename, :place)
    end
end
