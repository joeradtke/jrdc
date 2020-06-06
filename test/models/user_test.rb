require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without username" do
    user=User.new({:password=>"xxx"})
    assert_not user.save,"saved user without a username"
  end
  
  test "should not save user without email" do
    user=User.new({:password=>"xxx",:username=>"x"})
    assert_not user.save,"saved user without an email"
  end
  
  test "should not save user without valid email" do
    user=User.new({:password=>"xxx",:username=>"x",:email=>"CCC"})
    assert_not user.save,"saved user without a valid email"  
  end
  
  test "should not save user without unique username" do
    user1=users(:one)
    user2=User.new({:password=>"xxx",:username=>"arnold",:email=>"CCC@yahoo.com"})
    assert_not user2.save,"saved user without a unique username"
  end
end
