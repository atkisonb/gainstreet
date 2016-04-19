require 'test_helper'

class UserHoldingsControllerTest < ActionController::TestCase
  setup do
    @user_holding = user_holdings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_holdings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_holding" do
    assert_difference('UserHolding.count') do
      post :create, user_holding: { amount_invested: @user_holding.amount_invested, fund_id: @user_holding.fund_id, nav_shares_owned: @user_holding.nav_shares_owned, user_account_id: @user_holding.user_account_id }
    end

    assert_redirected_to user_holding_path(assigns(:user_holding))
  end

  test "should show user_holding" do
    get :show, id: @user_holding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_holding
    assert_response :success
  end

  test "should update user_holding" do
    patch :update, id: @user_holding, user_holding: { amount_invested: @user_holding.amount_invested, fund_id: @user_holding.fund_id, nav_shares_owned: @user_holding.nav_shares_owned, user_account_id: @user_holding.user_account_id }
    assert_redirected_to user_holding_path(assigns(:user_holding))
  end

  test "should destroy user_holding" do
    assert_difference('UserHolding.count', -1) do
      delete :destroy, id: @user_holding
    end

    assert_redirected_to user_holdings_path
  end
end
