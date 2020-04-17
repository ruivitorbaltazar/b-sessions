require 'test_helper'

class TraineesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trainees_index_url
    assert_response :success
  end

  test "should get show" do
    get trainees_show_url
    assert_response :success
  end

  test "should get new" do
    get trainees_new_url
    assert_response :success
  end

  test "should get create" do
    get trainees_create_url
    assert_response :success
  end

  test "should get edit" do
    get trainees_edit_url
    assert_response :success
  end

  test "should get update" do
    get trainees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trainees_destroy_url
    assert_response :success
  end

end
