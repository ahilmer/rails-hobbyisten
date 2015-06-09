require 'test_helper'

class IgnoredEventsControllerTest < ActionController::TestCase
  setup do
    @ignored_event = ignored_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ignored_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ignored_event" do
    assert_difference('IgnoredEvent.count') do
      post :create, ignored_event: {  }
    end

    assert_redirected_to ignored_event_path(assigns(:ignored_event))
  end

  test "should show ignored_event" do
    get :show, id: @ignored_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ignored_event
    assert_response :success
  end

  test "should update ignored_event" do
    patch :update, id: @ignored_event, ignored_event: {  }
    assert_redirected_to ignored_event_path(assigns(:ignored_event))
  end

  test "should destroy ignored_event" do
    assert_difference('IgnoredEvent.count', -1) do
      delete :destroy, id: @ignored_event
    end

    assert_redirected_to ignored_events_path
  end
end
