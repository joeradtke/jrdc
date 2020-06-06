require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without a body" do
    comment=Comment.new({:user=>users(:one),:post=>posts(:one)})
    assert_not comment.save,"Saved comment without a body"
  end
end
