require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do

    post post_comments_url(posts(:one))
    assert_response :success
  end

end
