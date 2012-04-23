require 'test_helper'

class LoanDebtsControllerTest < ActionController::TestCase
  setup do
    @loan_debt = loan_debts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_debts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_debt" do
    assert_difference('LoanDebt.count') do
      post :create, :loan_debt => { :amount => @loan_debt.amount, :uid1 => @loan_debt.uid1, :uid2 => @loan_debt.uid2 }
    end

    assert_redirected_to loan_debt_path(assigns(:loan_debt))
  end

  test "should show loan_debt" do
    get :show, :id => @loan_debt
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @loan_debt
    assert_response :success
  end

  test "should update loan_debt" do
    put :update, :id => @loan_debt, :loan_debt => { :amount => @loan_debt.amount, :uid1 => @loan_debt.uid1, :uid2 => @loan_debt.uid2 }
    assert_redirected_to loan_debt_path(assigns(:loan_debt))
  end

  test "should destroy loan_debt" do
    assert_difference('LoanDebt.count', -1) do
      delete :destroy, :id => @loan_debt
    end

    assert_redirected_to loan_debts_path
  end
end
