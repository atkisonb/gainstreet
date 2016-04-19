require 'test_helper'

class UserTransactionsControllerTest < ActionController::TestCase
  setup do
    @user_transaction = user_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_transaction" do
    assert_difference('UserTransaction.count') do
      post :create, user_transaction: { fund_id: @user_transaction.fund_id, issued_nav_shares: @user_transaction.issued_nav_shares, transaction_dollar_amount: @user_transaction.transaction_dollar_amount, user_account_id: @user_transaction.user_account_id, user_action: @user_transaction.user_action }
    end

    assert_redirected_to user_transaction_path(assigns(:user_transaction))
  end

  test "should show user_transaction" do
    get :show, id: @user_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_transaction
    assert_response :success
  end

  test "should update user_transaction" do
    patch :update, id: @user_transaction, user_transaction: { fund_id: @user_transaction.fund_id, issued_nav_shares: @user_transaction.issued_nav_shares, transaction_dollar_amount: @user_transaction.transaction_dollar_amount, user_account_id: @user_transaction.user_account_id, user_action: @user_transaction.user_action }
    assert_redirected_to user_transaction_path(assigns(:user_transaction))
  end

  test "should destroy user_transaction" do
    assert_difference('UserTransaction.count', -1) do
      delete :destroy, id: @user_transaction
    end

    assert_redirected_to user_transactions_path
  end
end
