require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url
    assert_response :success
  end

  test "should post create" do
    user=users(:one)
    post login_url,params: {user: {username: user.username,password: user.password}}
    assert_response :redirect
  end

  test "should get destroy" do
    get logout_url
    assert_response :redirect
  end

end
