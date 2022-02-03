require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

  test "viewing the index" do
    visit user_path
    assert_selector "h1", text: "User"
  end

  test 'creating a new User' do
    
    visit root_path
   
    click_link 'Crie sua conta'
   
    fill_in 'Nome', with:  'Rodrigo'
    sleep 1.0
    fill_in 'Email', with: 'rodrigo10@gmail.com'
    sleep 1.0
    fill_in 'Senha', with: '022896'
    sleep 1.0
    fill_in 'Confirmação da senha', with: '022896'
    sleep 1.0
    click_button 'Cadastrar'
    sleep 1.0
    assert :success

    click_link 'Entrar'
    sleep 1.0
    fill_in 'Email', with: 'rodrigo10@gmail.com'
    sleep 1.0
    fill_in 'Password', with: '022896'
    sleep 1.0
    click_button 'Entrar'
    assert :success

    click_link 'Novo Contato'
    sleep 1.0
    fill_in 'Nome', with: 'Rodrigo Santos'
    sleep 1.0
    fill_in 'Telefone', with: '222222222'
    sleep 1.0
    click_button 'Salvar'
    sleep 1.0
    click_link 'Back'
    sleep 1.0
    #assert_selector '#email', text: 'Email: rodrigo10@gmail.com'
    assert :success
    sleep 10.0
  
  end

  test 'Usuário já cadastrado ' do
    
    visit root_path
   
    click_link 'Entrar'
   
    fill_in 'Email', with: 'rodrigo10@gmail.com'
    sleep 1.0
    fill_in 'Password', with: '022896'
    sleep 1.0
    click_button 'Entrar'
    debugger
    x=''
   
    assert :success
    
   
    assert :success
  end
end
