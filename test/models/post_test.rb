require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should be invalid without a title" do
    posts(:one).title  = nil
    assert_nil posts(:one).title
    assert_equal false, posts(:one).valid?
  end

  test "post title should be a string" do
    assert_equal true, posts(:one).title.is_a?(String)
  end

  test "post content should be a string" do
    assert_equal true, posts(:one).content.is_a?(String)
  end
end
