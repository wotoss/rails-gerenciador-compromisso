require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "new user" do

    post users_path, params: { user: { email: "wotoss102@gmail.com", name: "cris", password: "022896", password_confirmation: "022896" } }
    mensagem = flash[:success]
    assert_equal("Usuário inserido com sucesso", mensagem)
    assert :success
   
   end
end
