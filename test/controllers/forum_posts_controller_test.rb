require "test_helper"

class ForumPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forum_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get forum_posts_show_url
    assert_response :success
  end

  test "should get new" do
    get forum_posts_new_url
    assert_response :success
  end

  test "should get create" do
    get forum_posts_create_url
    assert_response :success
  end
end
