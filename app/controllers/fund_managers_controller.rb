class FundManagersController < ApplicationController
  before_action :set_fund_manager, only: [:show, :edit, :update, :destroy]

  # GET /fund_managers
  # GET /fund_managers.json
  def index
    @fund_managers = FundManager.all
  end

  # GET /fund_managers/1
  # GET /fund_managers/1.json
  def show
  end

  # GET /fund_managers/new
  def new
    @fund_manager = FundManager.new
  end

  # GET /fund_managers/1/edit
  def edit
  end

  # POST /fund_managers
  # POST /fund_managers.json
  def create
    @fund_manager = FundManager.new(fund_manager_params)

    respond_to do |format|
      if @fund_manager.save
        format.html { redirect_to @fund_manager, notice: 'Fund manager was successfully created.' }
        format.json { render :show, status: :created, location: @fund_manager }
      else
        format.html { render :new }
        format.json { render json: @fund_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_managers/1
  # PATCH/PUT /fund_managers/1.json
  def update
    respond_to do |format|
      if @fund_manager.update(fund_manager_params)
        format.html { redirect_to @fund_manager, notice: 'Fund manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_manager }
      else
        format.html { render :edit }
        format.json { render json: @fund_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_managers/1
  # DELETE /fund_managers/1.json
  def destroy
    @fund_manager.destroy
    respond_to do |format|
      format.html { redirect_to fund_managers_url, notice: 'Fund manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_manager
      @fund_manager = FundManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_manager_params
      params.require(:fund_manager).permit(:first_name, :last_name, :manager_email, :about, :manager_facebook, :manager_instagram, :manager_location, :manager_school, :manager_twitter, :manager_years_experience)
    end
end
