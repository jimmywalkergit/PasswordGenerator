require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Homepage" do
    get :Homepage
    assert_response :success
  end

  test "should get Page1" do
    get :Page1
    assert_response :success
  end

  test "should get Page2" do
    get :Page2
    assert_response :success
  end

end
