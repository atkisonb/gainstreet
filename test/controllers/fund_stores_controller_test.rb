require 'test_helper'

class FundStoresControllerTest < ActionController::TestCase
  setup do
    @fund_store = fund_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_store" do
    assert_difference('FundStore.count') do
      post :create, fund_store: {  }
    end

    assert_redirected_to fund_store_path(assigns(:fund_store))
  end

  test "should show fund_store" do
    get :show, id: @fund_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_store
    assert_response :success
  end

  test "should update fund_store" do
    patch :update, id: @fund_store, fund_store: {  }
    assert_redirected_to fund_store_path(assigns(:fund_store))
  end

  test "should destroy fund_store" do
    assert_difference('FundStore.count', -1) do
      delete :destroy, id: @fund_store
    end

    assert_redirected_to fund_stores_path
  end
end
