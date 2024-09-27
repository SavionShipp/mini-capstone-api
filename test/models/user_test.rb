require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end
  
end
