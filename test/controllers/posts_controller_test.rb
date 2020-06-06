require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    post=posts(:one)
    get post_url(post)
    assert_response :success
  end

end
