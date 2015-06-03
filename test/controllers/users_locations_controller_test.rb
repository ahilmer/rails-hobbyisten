require 'test_helper'

class UsersLocationsControllerTest < ActionController::TestCase
  setup do
    @users_location = users_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_location" do
    assert_difference('UsersLocation.count') do
      post :create, users_location: {  }
    end

    assert_redirected_to users_location_path(assigns(:users_location))
  end

  test "should show users_location" do
    get :show, id: @users_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_location
    assert_response :success
  end

  test "should update users_location" do
    patch :update, id: @users_location, users_location: {  }
    assert_redirected_to users_location_path(assigns(:users_location))
  end

  test "should destroy users_location" do
    assert_difference('UsersLocation.count', -1) do
      delete :destroy, id: @users_location
    end

    assert_redirected_to users_locations_path
  end
end
