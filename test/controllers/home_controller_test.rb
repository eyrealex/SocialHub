require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "index action should be success" do
    get home_index_url
    assert_response :success
  end
end
