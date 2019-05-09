require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to reflections URL on login" do
    post '/auth/google_oauth2/callback', params: OmniAuth.config.mock_auth[:google_oauth2]
    assert_redirected_to reflections_url
  end
  test "first-time login should create a new Student record" do
    assert_difference('Student.count') do
      post '/auth/google_oauth2/callback', params: OmniAuth.config.add_mock(:google_oauth2, {uid: '12121'})
      assert_equal(session[:uid],'12121')
    end
  end
  test "user should be able to logout" do
    get logout_url
    assert_nil(session[:uid])
  end
end
