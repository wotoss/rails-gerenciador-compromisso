require "application_system_test_case"

#class UsersTest < ApplicationSystemTestCase
class UsersTest < ApplicationSystemTestCase
  test 'creating a new User' do
    # Visit the index page
    visit users_url

    # Click the New User link
    click_link 'Entrar'
    assert_selector 'h1', text: 'New User'

    # Submit the form
    fill_in 'Email', with: 'wotoss10@gmail.com'
    fill_in 'Password', with: 'secret'
    fill_in 'Password confirmation', with: 'secret'
    click_button 'Crie sua conta'

    # Verify that the User was created
    assert_selector '#notice', text: 'User was successfully created.'
    assert_selector '#email', text: 'Email: user1@example.com'

    # Verify that User appears in listing
    click_link 'Back'
    within 'table' do
      assert_selector 'tr td', text: 'user1@example.com'
    end
  end
end