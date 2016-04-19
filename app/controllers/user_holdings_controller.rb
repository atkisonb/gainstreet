class UserHoldingsController < ApplicationController
  before_action :set_user_holding, only: [:show, :edit, :update, :destroy]

  # GET /user_holdings
  # GET /user_holdings.json
  def index
    @user_holdings = UserHolding.all
  end

  # GET /user_holdings/1
  # GET /user_holdings/1.json
  def show
  end

  # GET /user_holdings/new
  def new
    @user_holding = UserHolding.new
  end

  # GET /user_holdings/1/edit
  def edit
  end

  # POST /user_holdings
  # POST /user_holdings.json
  def create
    @user_holding = UserHolding.new(user_holding_params)

    respond_to do |format|
      if @user_holding.save
        format.html { redirect_to @user_holding, notice: 'User holding was successfully created.' }
        format.json { render :show, status: :created, location: @user_holding }
      else
        format.html { render :new }
        format.json { render json: @user_holding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_holdings/1
  # PATCH/PUT /user_holdings/1.json
  def update
    respond_to do |format|
      if @user_holding.update(user_holding_params)
        format.html { redirect_to @user_holding, notice: 'User holding was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_holding }
      else
        format.html { render :edit }
        format.json { render json: @user_holding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_holdings/1
  # DELETE /user_holdings/1.json
  def destroy
    @user_holding.destroy
    respond_to do |format|
      format.html { redirect_to user_holdings_url, notice: 'User holding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_holding
      @user_holding = UserHolding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_holding_params
      params.require(:user_holding).permit(:nav_shares_owned, :amount_invested, :user_account_id, :fund_id)
    end
end
