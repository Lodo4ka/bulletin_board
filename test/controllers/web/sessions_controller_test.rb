require "test_helper"

class Web::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get web_sessions_destroy_url
    assert_response :success
  end
end
