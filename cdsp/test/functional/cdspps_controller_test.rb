require 'test_helper'

class CdsppsControllerTest < ActionController::TestCase
  setup do
    @cdspp = cdspps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cdspps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cdspp" do
    assert_difference('Cdspp.count') do
      post :create, :cdspp => @cdspp.attributes
    end

    assert_redirected_to cdspp_path(assigns(:cdspp))
  end

  test "should show cdspp" do
    get :show, :id => @cdspp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cdspp.to_param
    assert_response :success
  end

  test "should update cdspp" do
    put :update, :id => @cdspp.to_param, :cdspp => @cdspp.attributes
    assert_redirected_to cdspp_path(assigns(:cdspp))
  end

  test "should destroy cdspp" do
    assert_difference('Cdspp.count', -1) do
      delete :destroy, :id => @cdspp.to_param
    end

    assert_redirected_to cdspps_path
  end
end
