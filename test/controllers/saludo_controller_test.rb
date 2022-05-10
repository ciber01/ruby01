require "test_helper"

class SaludoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saludo_index_url
    assert_response :success
  end
end
