require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get welcome_name_url
    assert_response :success
  end

  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

end
