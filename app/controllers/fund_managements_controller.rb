class FundManagementsController < ApplicationController
  before_action :set_fund_management, only: [:show, :edit, :update, :destroy]

  # GET /fund_managements
  # GET /fund_managements.json
  def index
    @fund_managements = FundManagement.all
  end

  # GET /fund_managements/1
  # GET /fund_managements/1.json
  def show
  end

  # GET /fund_managements/new
  def new
    @fund_management = FundManagement.new
  end

  # GET /fund_managements/1/edit
  def edit
  end

  # POST /fund_managements
  # POST /fund_managements.json
  def create
    @fund_management = FundManagement.new(fund_management_params)

    respond_to do |format|
      if @fund_management.save
        format.html { redirect_to @fund_management, notice: 'Fund management was successfully created.' }
        format.json { render :show, status: :created, location: @fund_management }
      else
        format.html { render :new }
        format.json { render json: @fund_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_managements/1
  # PATCH/PUT /fund_managements/1.json
  def update
    respond_to do |format|
      if @fund_management.update(fund_management_params)
        format.html { redirect_to @fund_management, notice: 'Fund management was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_management }
      else
        format.html { render :edit }
        format.json { render json: @fund_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_managements/1
  # DELETE /fund_managements/1.json
  def destroy
    @fund_management.destroy
    respond_to do |format|
      format.html { redirect_to fund_managements_url, notice: 'Fund management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_management
      @fund_management = FundManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_management_params
      params.require(:fund_management).permit(:relationship_type, :fund_manager_id, :fund_id)
    end
end
