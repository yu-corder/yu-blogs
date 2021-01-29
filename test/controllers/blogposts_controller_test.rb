require "test_helper"

class BlogpostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogposts_index_url
    assert_response :success
  end

  test "should get new" do
    get blogposts_new_url
    assert_response :success
  end

  test "should get create" do
    get blogposts_create_url
    assert_response :success
  end

  test "should get edit" do
    get blogposts_edit_url
    assert_response :success
  end

  test "should get update" do
    get blogposts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get blogposts_destroy_url
    assert_response :success
  end
end
