require 'test_helper'

class BrunksControllerTest < ActionDispatch::IntegrationTest
  test "should get step1" do
    get brunks_step1_url
    assert_response :success
  end

  test "should get step2" do
    get brunks_step2_url
    assert_response :success
  end

  test "should get my_brunks" do
    get brunks_my_brunks_url
    assert_response :success
  end

  test "should get show" do
    get brunks_show_url
    assert_response :success
  end

  test "should get brunks_required" do
    get brunks_brunks_required_url
    assert_response :success
  end

end
