require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get reviews_create_url
    assert_response :success
  end

  test "should get destory" do
    get reviews_destory_url
    assert_response :success
  end

end