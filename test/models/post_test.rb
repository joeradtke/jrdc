require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without a name" do
    post=Post.new({:body=>"z"})
    assert_not post.save,"Saved post without a title"
  end
  
  test "should not save post without a body" do
    post=Post.new({:title=>"y"})
    assert_not post.save,"Saved post without a body"
  end
end
