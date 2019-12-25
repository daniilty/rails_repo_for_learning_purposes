require 'test_helper'

class SampleControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sample_home_url
    assert_response :success
  end

  test "should get about" do
    get sample_about_url
    assert_response :success
  end

  test "should get help" do
    get sample_help_url
    assert_response :success
  end

end
