require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  def setup
    @authentication = User.new(name: "woto", email: "evania@gmail.com", password: "022855")
  end
  

  test "should not save user without name" do
    user = User.new
    assert_not user.save, "Saved the user without a name"
  end

   test "should be valid" do
    assert @authentication.valid?
  end

  test "name should be present" do
    @authentication.name = "  "
    assert_not @authentication.valid?
  end
  
  test "email should be present" do
    @authentication.email = "  "
    assert_not @authentication.valid?
  end

  test 'invalid no email' do
    user = User.new(name: 'woto')
    refute user.valid?
    assert_not_nil user.errors[:email]
  end

  test "password should be present" do
    @authentication.password = " "
    assert_not @authentication.valid?
  end

  test "valid should present" do
    @authentication = true
    assert :success
  end

  test "should  valid" do
    assert @authentication.valid?
  end

  test 'valid user' do
    user = User.new(name: 'woto', email: 'evania@gmail.com', password: "022855")
    assert user.valid?
  end
 
end
