require 'test_helper'

class ScottyControllerTest < ActionDispatch::IntegrationTest
  test "should get speak" do
    get scotty_speak_url
    assert_response :success
  end

  test "should get teach" do
    get scotty_teach_url
    assert_response :success
  end

  test "should get dig" do
    get scotty_dig_url
    assert_response :success
  end

end
