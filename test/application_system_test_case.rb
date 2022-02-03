require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]


  test 'system user registration' do
    
    visit root_path
    sleep 1.5
    click_link 'Abra sua conta'
    sleep 1.0
    fill_in 'Nome', with:  'Livia'
    sleep 1.0
    fill_in 'Email', with: 'livia10@gmail.com'
    sleep 1.0
    fill_in 'Senha', with: '022896'
    sleep 1.0
    fill_in 'Confirmação da senha', with: '022896'
    sleep 1.0
    click_button 'Cadastrar'
    sleep 1.0
    assert :success
    sleep 1.0
    click_link 'Entrar'
    sleep 1.0
    fill_in 'Email', with: 'livia10@gmail.com'
    sleep 1.0
    fill_in 'Password', with: '022896'
    sleep 1.0
    click_button 'Entrar'
    sleep 1.0
    assert :success
    sleep 1.0
    click_link 'Novo Contato'
    sleep 1.0
    fill_in 'Nome', with: 'Livia Victoria'
    sleep 1.0
    fill_in 'Telefone', with: '(00) 95700-3564'
    sleep 1.0
    click_button 'Salvar'
    sleep 1.0
    click_link 'Voltar'
    sleep 1.0

    assert :success
    sleep 10.0
  
  end
end
