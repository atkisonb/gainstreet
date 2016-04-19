require 'test_helper'

class FundCategorizationsControllerTest < ActionController::TestCase
  setup do
    @fund_categorization = fund_categorizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_categorizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_categorization" do
    assert_difference('FundCategorization.count') do
      post :create, fund_categorization: { fund_id: @fund_categorization.fund_id, fundstore_category_id: @fund_categorization.fundstore_category_id }
    end

    assert_redirected_to fund_categorization_path(assigns(:fund_categorization))
  end

  test "should show fund_categorization" do
    get :show, id: @fund_categorization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_categorization
    assert_response :success
  end

  test "should update fund_categorization" do
    patch :update, id: @fund_categorization, fund_categorization: { fund_id: @fund_categorization.fund_id, fundstore_category_id: @fund_categorization.fundstore_category_id }
    assert_redirected_to fund_categorization_path(assigns(:fund_categorization))
  end

  test "should destroy fund_categorization" do
    assert_difference('FundCategorization.count', -1) do
      delete :destroy, id: @fund_categorization
    end

    assert_redirected_to fund_categorizations_path
  end
end
