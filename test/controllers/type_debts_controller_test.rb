require 'test_helper'

class TypeDebtsControllerTest < ActionController::TestCase
  setup do
    @type_debt = type_debts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_debts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_debt" do
    assert_difference('TypeDebt.count') do
      post :create, type_debt: { type_debt: @type_debt.type_debt }
    end

    assert_redirected_to type_debt_path(assigns(:type_debt))
  end

  test "should show type_debt" do
    get :show, id: @type_debt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_debt
    assert_response :success
  end

  test "should update type_debt" do
    patch :update, id: @type_debt, type_debt: { type_debt: @type_debt.type_debt }
    assert_redirected_to type_debt_path(assigns(:type_debt))
  end

  test "should destroy type_debt" do
    assert_difference('TypeDebt.count', -1) do
      delete :destroy, id: @type_debt
    end

    assert_redirected_to type_debts_path
  end
end
