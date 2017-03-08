require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "can show a post" do
    post = posts(:one)
    get post_url(post)
    assert_response :success
  end

  test "can delete a workout" do
    post = posts(:one)
    assert_difference('Post.count', -1) do
      delete post_url(post)
    end
  end

  test "can update a workout" do
    post = posts(:one)
    patch post_url(post), params: { post: {title: "updated"} }

    assert_redirected_to posts_url
    post.reload
    assert_equal "updated", post.title
  end

end
