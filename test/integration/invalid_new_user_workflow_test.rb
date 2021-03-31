require "test_helper"

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest
  fixtures :all

  test 'try to create a new user without a login' do
    @user = users(:one)
    get '/u/alexeyre'
    assert assert_response :success
  end
  # test "the truth" do
  #   assert true
  # end
end
