require 'test_helper'

class SessionTraineesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get session_trainees_create_url
    assert_response :success
  end

  test "should get update" do
    get session_trainees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get session_trainees_destroy_url
    assert_response :success
  end

end
