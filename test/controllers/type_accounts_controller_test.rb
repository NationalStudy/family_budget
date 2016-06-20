require 'test_helper'

class TypeAccountsControllerTest < ActionController::TestCase
  setup do
    @type_account = type_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_account" do
    assert_difference('TypeAccount.count') do
      post :create, type_account: { type_account: @type_account.type_account }
    end

    assert_redirected_to type_account_path(assigns(:type_account))
  end

  test "should show type_account" do
    get :show, id: @type_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_account
    assert_response :success
  end

  test "should update type_account" do
    patch :update, id: @type_account, type_account: { type_account: @type_account.type_account }
    assert_redirected_to type_account_path(assigns(:type_account))
  end

  test "should destroy type_account" do
    assert_difference('TypeAccount.count', -1) do
      delete :destroy, id: @type_account
    end

    assert_redirected_to type_accounts_path
  end
end
