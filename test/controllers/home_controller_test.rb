require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "index action should be success" do
    get :index
    assert_response :success
  end
end
