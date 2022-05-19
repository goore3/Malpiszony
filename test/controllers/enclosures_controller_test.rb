require "test_helper"

class EnclosuresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enclosures_index_url
    assert_response :success
  end
end
