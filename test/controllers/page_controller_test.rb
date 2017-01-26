require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get page_Home_url
    assert_response :success
  end

  test "should get Calendar" do
    get page_Calendar_url
    assert_response :success
  end

  test "should get Presence" do
    get page_Presence_url
    assert_response :success
  end

  test "should get Statistics" do
    get page_Statistics_url
    assert_response :success
  end

  test "should get Admin" do
    get page_Admin_url
    assert_response :success
  end

end
