class FundCashesController < ApplicationController
  before_action :set_fund_cash, only: [:show, :edit, :update, :destroy]

  # GET /fund_cashes
  # GET /fund_cashes.json
  def index
    @fund_cashes = FundCash.all
  end

  # GET /fund_cashes/1
  # GET /fund_cashes/1.json
  def show
  end

  # GET /fund_cashes/new
  def new
    @fund_cash = FundCash.new
  end

  # GET /fund_cashes/1/edit
  def edit
  end

  # POST /fund_cashes
  # POST /fund_cashes.json
  def create
    @fund_cash = FundCash.new(fund_cash_params)

    respond_to do |format|
      if @fund_cash.save
        format.html { redirect_to @fund_cash, notice: 'Fund cash was successfully created.' }
        format.json { render :show, status: :created, location: @fund_cash }
      else
        format.html { render :new }
        format.json { render json: @fund_cash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_cashes/1
  # PATCH/PUT /fund_cashes/1.json
  def update
    respond_to do |format|
      if @fund_cash.update(fund_cash_params)
        format.html { redirect_to @fund_cash, notice: 'Fund cash was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_cash }
      else
        format.html { render :edit }
        format.json { render json: @fund_cash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_cashes/1
  # DELETE /fund_cashes/1.json
  def destroy
    @fund_cash.destroy
    respond_to do |format|
      format.html { redirect_to fund_cashes_url, notice: 'Fund cash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_cash
      @fund_cash = FundCash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_cash_params
      params.require(:fund_cash).permit(:amount, :fund_id)
    end
end
