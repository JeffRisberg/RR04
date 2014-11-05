require 'test_helper'

class ActivityEventsControllerTest < ActionController::TestCase
  setup do
    @activity_event = activity_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_event" do
    assert_difference('ActivityEvent.count') do
      post :create, activity_event: { amount: @activity_event.amount, journalEntry: @activity_event.journalEntry }
    end

    assert_redirected_to activity_event_path(assigns(:activity_event))
  end

  test "should show activity_event" do
    get :show, id: @activity_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_event
    assert_response :success
  end

  test "should update activity_event" do
    put :update, id: @activity_event, activity_event: { amount: @activity_event.amount, journalEntry: @activity_event.journalEntry }
    assert_redirected_to activity_event_path(assigns(:activity_event))
  end

  test "should destroy activity_event" do
    assert_difference('ActivityEvent.count', -1) do
      delete :destroy, id: @activity_event
    end

    assert_redirected_to activity_events_path
  end
end
