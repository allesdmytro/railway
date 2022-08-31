require "test_helper"

class TrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trains_index_url
    assert_response :success
  end

  test "should get show" do
    get trains_show_url
    assert_response :success
  end
end
