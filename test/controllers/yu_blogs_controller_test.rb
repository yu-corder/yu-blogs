require "test_helper"

class YuBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yu_blogs_index_url
    assert_response :success
  end

  test "should get genre" do
    get yu_blogs_genre_url
    assert_response :success
  end

  test "should get show" do
    get yu_blogs_show_url
    assert_response :success
  end
end
