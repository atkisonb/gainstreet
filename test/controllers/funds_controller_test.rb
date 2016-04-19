require 'test_helper'

class FundsControllerTest < ActionController::TestCase
  setup do
    @fund = funds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund" do
    assert_difference('Fund.count') do
      post :create, fund: { fund_description: @fund.fund_description, fund_manager_id: @fund.fund_manager_id, fund_name: @fund.fund_name, fund_strategy: @fund.fund_strategy, nav_shares: @fund.nav_shares, strategy_allocation_discipline: @fund.strategy_allocation_discipline, strategy_other_notes: @fund.strategy_other_notes, strategy_why_i_buy: @fund.strategy_why_i_buy, strategy_why_i_sell: @fund.strategy_why_i_sell, user_account_id: @fund.user_account_id }
    end

    assert_redirected_to fund_path(assigns(:fund))
  end

  test "should show fund" do
    get :show, id: @fund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund
    assert_response :success
  end

  test "should update fund" do
    patch :update, id: @fund, fund: { fund_description: @fund.fund_description, fund_manager_id: @fund.fund_manager_id, fund_name: @fund.fund_name, fund_strategy: @fund.fund_strategy, nav_shares: @fund.nav_shares, strategy_allocation_discipline: @fund.strategy_allocation_discipline, strategy_other_notes: @fund.strategy_other_notes, strategy_why_i_buy: @fund.strategy_why_i_buy, strategy_why_i_sell: @fund.strategy_why_i_sell, user_account_id: @fund.user_account_id }
    assert_redirected_to fund_path(assigns(:fund))
  end

  test "should destroy fund" do
    assert_difference('Fund.count', -1) do
      delete :destroy, id: @fund
    end

    assert_redirected_to funds_path
  end
end
