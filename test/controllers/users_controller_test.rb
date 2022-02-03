require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

# passando no teste
  test "new user" do

    post users_path, params: { user: { email: "wotoss102@gmail.com", name: "cris", password: "022896", password_confirmation: "022896" } }
    mensagem = flash[:success]
    assert_equal("Usuário inserido com sucesso", mensagem)
    assert :success
   
   end

   #errado
   test "update" do
    debugger
    
    get edit_user_path, params: { user: { email: "wotoss102@gmail.com", name: "cris", password: "022896", password_confirmation: "022896" } }
    debugger
    mensagem = flash[:success]
    assert_equal("Informações atualizadas", mensagem)
    assert :success
   
   end
  

end
