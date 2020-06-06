require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest
  test "login and logout" do
    get login_path
    assert_response :success
    post login_path,params: {user: {username: users(:one).username,password: 'bulldog'}}
    follow_redirect!
    assert_equal 200,status
    assert_equal edit_user_path(users(:one)),path
    get logout_path
    follow_redirect!
    assert_nil session[:user_id]
  end
  
    test "create user joeradtke as admin" do
    get new_user_path
    assert_response :success
    post users_path,params: {user: {username: users(:two).username,password: 'suisse',email: users(:two).email}}
    assert_equal users(:two).admin,true
  end
  
    test "update profile" do
      user=users(:one)
      get edit_user_url(user)
      assert_response :success
      patch user_path(user),params: {user: {username: user.username,password: "bulldog",email: "x@yahoo.com"}}
      follow_redirect!
      assert_equal 200,status
    end
end
