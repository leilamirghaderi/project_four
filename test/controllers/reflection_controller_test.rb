require 'test_helper'

class ReflectionControllerTest < ActionDispatch::IntegrationTest
  test "should get week:integer" do
    get reflection_week:integer_url
    assert_response :success
  end

  test "should get reaction:text" do
    get reflection_reaction:text_url
    assert_response :success
  end

  test "should get title:string" do
    get reflection_title:string_url
    assert_response :success
  end

end
