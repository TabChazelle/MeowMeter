require "test_helper"

class KittensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kittens_index_url
    assert_response :success
  end

  test "should get show" do
    get kittens_show_url
    assert_response :success
  end

  test "should get top3" do
    get kittens_top3_url
    assert_response :success
  end
end
