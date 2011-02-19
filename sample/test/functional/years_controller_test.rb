require 'test_helper'

class YearsControllerTest < ActionController::TestCase
  setup do
    @year = years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create year" do
    assert_difference('Year.count') do
      post :create, :year => @year.attributes
    end

    assert_redirected_to year_path(assigns(:year))
  end

  test "should show year" do
    get :show, :id => @year.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @year.to_param
    assert_response :success
  end

  test "should update year" do
    put :update, :id => @year.to_param, :year => @year.attributes
    assert_redirected_to year_path(assigns(:year))
  end

  test "should destroy year" do
    assert_difference('Year.count', -1) do
      delete :destroy, :id => @year.to_param
    end

    assert_redirected_to years_path
  end
end
