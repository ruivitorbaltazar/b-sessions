require 'test_helper'

class MeetingTraineesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get meeting_trainees_create_url
    assert_response :success
  end

  test "should get update" do
    get meeting_trainees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get meeting_trainees_destroy_url
    assert_response :success
  end

end
