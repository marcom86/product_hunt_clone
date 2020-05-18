require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "full_name returns capitalized first name and last name" do
    user = User.new(first_name: "John", last_name: "Doe")
    assert_equal "John Doe", user.full_name
  end

  test "do not crash if first_name is not provided" do
    user = User.new(last_name: "Doe")
    assert_equal "Doe", user.full_name
  end
end
