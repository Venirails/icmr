require "test_helper"

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get singup" do
    get account_singup_url
    assert_response :success
  end

  test "should get login" do
    get account_login_url
    assert_response :success
  end
end
