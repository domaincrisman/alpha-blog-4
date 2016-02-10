

class SignpUsersTest < ActionDispatch::IntegrationTest

  test "should sign up an user" do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {username: "tonyuser1", email: "tonyuser1@example.com", password: "tornasol", admin: false}
    end
    assert_template 'users/show'
    assert_match "tonyuser1", response.body
    
  end
end