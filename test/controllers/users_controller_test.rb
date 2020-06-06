require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should get create" do
    user=users(:one)
    post users_url,params: {user: {username: user.username,password_digest: user.password_digest,email: user.email}}
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(users(:one))
    assert_response :success
  end

  test "should get update" do
    user=users(:one)
    patch user_url(users(:one)),params: {user: {username: user.username,password_digest: user.password_digest,email: user.email}}
    assert_response :redirect
  end

end
