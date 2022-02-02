require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
 
  test "should get new" do
    get sessions_new_url
    assert_response :success
  end



 
 #esta certa esta validação
 test "should get validation route" do
  get entrar_path
  assert_response :success
end
end