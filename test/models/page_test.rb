require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "should not save page without a name" do
    page=Page.new({:title=>"y",:body=>"z"})
    assert_not page.save,"Saved page without a name"
  end
  
  test "should not save page without a body" do
    page=Page.new({:name=>"x",:title=>"y"})
    assert_not page.save,"Saved page without a body"
  end
  
    test "should not save page without a title" do
    page=Page.new({:name=>"x",:body=>"y"})
    assert_not page.save,"Saved page without a title"
  end
  
  test "should not save page without unique name" do
    page1=pages(:one)
    page2=Page.new({:name=>"x",:title=>"arnold",:body=>"CCC@yahoo.com"})
    assert_not page2.save,"saved page without a unique name"
  end
end
