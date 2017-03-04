require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should be invalid without a title" do
    posts(:one).title  = nil
    assert_nil posts(:one).title
    assert_equal false, posts(:one).valid?
  end

  test "should be invalid without content" do
    posts(:one).content  = nil
    assert_nil posts(:one).content
    assert_equal false, posts(:one).valid?
  end

  test "post content should be a string" do
    assert_equal true, posts(:one).title.is_a?(String)
  end
end
