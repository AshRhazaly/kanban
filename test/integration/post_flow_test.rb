require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  test "post index is home page" do
    get "/"
    assert_select "h1", "Posts#index"
  end

  test "create a post" do
    get "/posts/new"
    assert_response :success

    post "/posts",
      params: {post: {title: "Post title", content: "Post content"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h2", "Post title"
  end

  test "form found when creating a post" do
    get "/posts/new"
    assert_template partial: '_form', locals: { post: @post }
  end
end
