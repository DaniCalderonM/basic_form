require "test_helper"

class JournalistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get journalists_index_url
    assert_response :success
  end

  test "should get new" do
    get journalists_new_url
    assert_response :success
  end
end
