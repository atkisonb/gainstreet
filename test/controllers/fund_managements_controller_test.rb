require 'test_helper'

class FundManagementsControllerTest < ActionController::TestCase
  setup do
    @fund_management = fund_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fund_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund_management" do
    assert_difference('FundManagement.count') do
      post :create, fund_management: { fund_id: @fund_management.fund_id, fund_manager_id: @fund_management.fund_manager_id, relationship_type: @fund_management.relationship_type }
    end

    assert_redirected_to fund_management_path(assigns(:fund_management))
  end

  test "should show fund_management" do
    get :show, id: @fund_management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund_management
    assert_response :success
  end

  test "should update fund_management" do
    patch :update, id: @fund_management, fund_management: { fund_id: @fund_management.fund_id, fund_manager_id: @fund_management.fund_manager_id, relationship_type: @fund_management.relationship_type }
    assert_redirected_to fund_management_path(assigns(:fund_management))
  end

  test "should destroy fund_management" do
    assert_difference('FundManagement.count', -1) do
      delete :destroy, id: @fund_management
    end

    assert_redirected_to fund_managements_path
  end
end
