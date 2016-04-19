require 'test_helper'

class FundCashesControllerTest < ActionController::TestCase
  setup do
    @fund_cash = fund_cashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_cashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_cash" do
    assert_difference('FundCash.count') do
      post :create, fund_cash: { amount: @fund_cash.amount, fund_id: @fund_cash.fund_id }
    end

    assert_redirected_to fund_cash_path(assigns(:fund_cash))
  end

  test "should show fund_cash" do
    get :show, id: @fund_cash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_cash
    assert_response :success
  end

  test "should update fund_cash" do
    patch :update, id: @fund_cash, fund_cash: { amount: @fund_cash.amount, fund_id: @fund_cash.fund_id }
    assert_redirected_to fund_cash_path(assigns(:fund_cash))
  end

  test "should destroy fund_cash" do
    assert_difference('FundCash.count', -1) do
      delete :destroy, id: @fund_cash
    end

    assert_redirected_to fund_cashes_path
  end
end
