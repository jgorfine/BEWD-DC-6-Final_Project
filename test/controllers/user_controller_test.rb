require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
