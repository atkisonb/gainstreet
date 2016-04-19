class UserTransactionsController < ApplicationController
  before_action :set_user_transaction, only: [:show, :edit, :update, :destroy]

  # GET /user_transactions
  # GET /user_transactions.json
  def index
    @user_transactions = UserTransaction.all
  end

  # GET /user_transactions/1
  # GET /user_transactions/1.json
  def show
  end

  # GET /user_transactions/new
  def new
    @user_transaction = UserTransaction.new
  end

  # GET /user_transactions/1/edit
  def edit
  end

  # POST /user_transactions
  # POST /user_transactions.json
  def create
    @user_transaction = UserTransaction.new(user_transaction_params)

    respond_to do |format|
      if @user_transaction.save
        format.html { redirect_to @user_transaction, notice: 'User transaction was successfully created.' }
        format.json { render :show, status: :created, location: @user_transaction }
      else
        format.html { render :new }
        format.json { render json: @user_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_transactions/1
  # PATCH/PUT /user_transactions/1.json
  def update
    respond_to do |format|
      if @user_transaction.update(user_transaction_params)
        format.html { redirect_to @user_transaction, notice: 'User transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_transaction }
      else
        format.html { render :edit }
        format.json { render json: @user_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_transactions/1
  # DELETE /user_transactions/1.json
  def destroy
    @user_transaction.destroy
    respond_to do |format|
      format.html { redirect_to user_transactions_url, notice: 'User transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_transaction
      @user_transaction = UserTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_transaction_params
      params.require(:user_transaction).permit(:transaction_dollar_amount, :issued_nav_shares, :user_action, :user_account_id, :fund_id)
    end
end
