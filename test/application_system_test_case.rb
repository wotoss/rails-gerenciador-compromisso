require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

  test "viewing the index" do
    visit user_path
    assert_selector "h1", text: "User"
  end
end
