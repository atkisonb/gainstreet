require 'test_helper'

class FundTransactionsControllerTest < ActionController::TestCase
  setup do
    @fund_transaction = fund_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_transaction" do
    assert_difference('FundTransaction.count') do
      post :create, fund_transaction: { amount: @fund_transaction.amount, fund_id: @fund_transaction.fund_id, market_action: @fund_transaction.market_action, market_shares: @fund_transaction.market_shares, stock_id: @fund_transaction.stock_id }
    end

    assert_redirected_to fund_transaction_path(assigns(:fund_transaction))
  end

  test "should show fund_transaction" do
    get :show, id: @fund_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_transaction
    assert_response :success
  end

  test "should update fund_transaction" do
    patch :update, id: @fund_transaction, fund_transaction: { amount: @fund_transaction.amount, fund_id: @fund_transaction.fund_id, market_action: @fund_transaction.market_action, market_shares: @fund_transaction.market_shares, stock_id: @fund_transaction.stock_id }
    assert_redirected_to fund_transaction_path(assigns(:fund_transaction))
  end

  test "should destroy fund_transaction" do
    assert_difference('FundTransaction.count', -1) do
      delete :destroy, id: @fund_transaction
    end

    assert_redirected_to fund_transactions_path
  end
end
