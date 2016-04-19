class FundTransactionsController < ApplicationController
  before_action :set_fund_transaction, only: [:show, :edit, :update, :destroy]

  # GET /fund_transactions
  # GET /fund_transactions.json
  def index
    @fund_transactions = FundTransaction.all
  end

  # GET /fund_transactions/1
  # GET /fund_transactions/1.json
  def show
  end

  # GET /fund_transactions/new
  def new
    @fund_transaction = FundTransaction.new
  end

  # GET /fund_transactions/1/edit
  def edit
  end

  # POST /fund_transactions
  # POST /fund_transactions.json
  def create
    @fund_transaction = FundTransaction.new(fund_transaction_params)

    respond_to do |format|
      if @fund_transaction.save
        format.html { redirect_to @fund_transaction, notice: 'Fund transaction was successfully created.' }
        format.json { render :show, status: :created, location: @fund_transaction }
      else
        format.html { render :new }
        format.json { render json: @fund_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fund_transactions/1
  # PATCH/PUT /fund_transactions/1.json
  def update
    respond_to do |format|
      if @fund_transaction.update(fund_transaction_params)
        format.html { redirect_to @fund_transaction, notice: 'Fund transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @fund_transaction }
      else
        format.html { render :edit }
        format.json { render json: @fund_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fund_transactions/1
  # DELETE /fund_transactions/1.json
  def destroy
    @fund_transaction.destroy
    respond_to do |format|
      format.html { redirect_to fund_transactions_url, notice: 'Fund transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund_transaction
      @fund_transaction = FundTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_transaction_params
      params.require(:fund_transaction).permit(:market_shares, :amount, :market_action, :stock_id, :fund_id)
    end
end
