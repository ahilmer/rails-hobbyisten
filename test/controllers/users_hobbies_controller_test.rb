require 'test_helper'

class UsersHobbiesControllerTest < ActionController::TestCase
  setup do
    @users_hobby = users_hobbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_hobbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_hobby" do
    assert_difference('UsersHobby.count') do
      post :create, users_hobby: {  }
    end

    assert_redirected_to users_hobby_path(assigns(:users_hobby))
  end

  test "should show users_hobby" do
    get :show, id: @users_hobby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_hobby
    assert_response :success
  end

  test "should update users_hobby" do
    patch :update, id: @users_hobby, users_hobby: {  }
    assert_redirected_to users_hobby_path(assigns(:users_hobby))
  end

  test "should destroy users_hobby" do
    assert_difference('UsersHobby.count', -1) do
      delete :destroy, id: @users_hobby
    end

    assert_redirected_to users_hobbies_path
  end
end
