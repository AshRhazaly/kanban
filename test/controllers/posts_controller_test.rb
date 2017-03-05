require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get create" do
    get "/posts/create"
    assert_response :success
  end

  test "should get new" do
    get "/posts/new"
    assert_response :success
  end
  #
  test "should get edit" do
    get "/posts/edit"
    assert_response :success
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end
  end

end
