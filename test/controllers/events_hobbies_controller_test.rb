require 'test_helper'

class EventsHobbiesControllerTest < ActionController::TestCase
  setup do
    @events_hobby = events_hobbies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_hobbies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_hobby" do
    assert_difference('EventsHobby.count') do
      post :create, events_hobby: {  }
    end

    assert_redirected_to events_hobby_path(assigns(:events_hobby))
  end

  test "should show events_hobby" do
    get :show, id: @events_hobby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @events_hobby
    assert_response :success
  end

  test "should update events_hobby" do
    patch :update, id: @events_hobby, events_hobby: {  }
    assert_redirected_to events_hobby_path(assigns(:events_hobby))
  end

  test "should destroy events_hobby" do
    assert_difference('EventsHobby.count', -1) do
      delete :destroy, id: @events_hobby
    end

    assert_redirected_to events_hobbies_path
  end
end
