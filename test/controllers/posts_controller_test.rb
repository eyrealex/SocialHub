require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "index action should be success" do
    get community_post_path(:post_id)
    assert_response :success
  end

  test "new should be success" do
    get new_community_post_path
    assert_response :success
  end

end
