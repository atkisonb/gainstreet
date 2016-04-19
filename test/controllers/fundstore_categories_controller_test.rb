require 'test_helper'

class FundstoreCategoriesControllerTest < ActionController::TestCase
  setup do
    @fundstore_category = fundstore_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fundstore_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fundstore_category" do
    assert_difference('FundstoreCategory.count') do
      post :create, fundstore_category: { category_heading: @fundstore_category.category_heading, category_subheading: @fundstore_category.category_subheading, fund_id: @fundstore_category.fund_id, fund_store_id: @fundstore_category.fund_store_id }
    end

    assert_redirected_to fundstore_category_path(assigns(:fundstore_category))
  end

  test "should show fundstore_category" do
    get :show, id: @fundstore_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fundstore_category
    assert_response :success
  end

  test "should update fundstore_category" do
    patch :update, id: @fundstore_category, fundstore_category: { category_heading: @fundstore_category.category_heading, category_subheading: @fundstore_category.category_subheading, fund_id: @fundstore_category.fund_id, fund_store_id: @fundstore_category.fund_store_id }
    assert_redirected_to fundstore_category_path(assigns(:fundstore_category))
  end

  test "should destroy fundstore_category" do
    assert_difference('FundstoreCategory.count', -1) do
      delete :destroy, id: @fundstore_category
    end

    assert_redirected_to fundstore_categories_path
  end
end
