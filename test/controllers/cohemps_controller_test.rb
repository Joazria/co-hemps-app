require 'test_helper'

class CohempsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cohemps_index_url
    assert_response :success
  end

  test "should get show" do
    get cohemps_show_url
    assert_response :success
  end

  test "should get edit" do
    get cohemps_edit_url
    assert_response :success
  end

  test "should get new" do
    get cohemps_new_url
    assert_response :success
  end

end
