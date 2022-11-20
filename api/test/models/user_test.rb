require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without name" do
    user = User.new
    assert_not user.save, "Saved the user without a name"
  end
end
