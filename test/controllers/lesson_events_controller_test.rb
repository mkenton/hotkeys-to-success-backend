require "test_helper"

class LessonEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_event = lesson_events(:one)
  end

  test "should get index" do
    get lesson_events_url, as: :json
    assert_response :success
  end

  test "should create lesson_event" do
    assert_difference('LessonEvent.count') do
      post lesson_events_url, params: { lesson_event: { completed: @lesson_event.completed, lesson_id: @lesson_event.lesson_id, user_id: @lesson_event.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lesson_event" do
    get lesson_event_url(@lesson_event), as: :json
    assert_response :success
  end

  test "should update lesson_event" do
    patch lesson_event_url(@lesson_event), params: { lesson_event: { completed: @lesson_event.completed, lesson_id: @lesson_event.lesson_id, user_id: @lesson_event.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy lesson_event" do
    assert_difference('LessonEvent.count', -1) do
      delete lesson_event_url(@lesson_event), as: :json
    end

    assert_response 204
  end
end
