require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  test "post index is home page" do
    get "/"
    assert_select "h1", "Posts#index"
  end

  test "create a post" do
    get "/posts/new"
    assert_response :success
  end
end
