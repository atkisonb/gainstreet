require 'test_helper'

class UserAccountsControllerTest < ActionController::TestCase
  setup do
    @user_account = user_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_account" do
    assert_difference('UserAccount.count') do
      post :create, user_account: { account_type_id: @user_account.account_type_id, fund_id: @user_account.fund_id, user_account_number: @user_account.user_account_number, user_id: @user_account.user_id }
    end

    assert_redirected_to user_account_path(assigns(:user_account))
  end

  test "should show user_account" do
    get :show, id: @user_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_account
    assert_response :success
  end

  test "should update user_account" do
    patch :update, id: @user_account, user_account: { account_type_id: @user_account.account_type_id, fund_id: @user_account.fund_id, user_account_number: @user_account.user_account_number, user_id: @user_account.user_id }
    assert_redirected_to user_account_path(assigns(:user_account))
  end

  test "should destroy user_account" do
    assert_difference('UserAccount.count', -1) do
      delete :destroy, id: @user_account
    end

    assert_redirected_to user_accounts_path
  end
end
