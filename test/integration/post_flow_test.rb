require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  test "post index is home page" do
    get "/"
    assert_select "h1", "Post#index"
  end
end
