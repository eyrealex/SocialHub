require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "index action should be success" do
    get root_path
    assert_response :success
  end
end
