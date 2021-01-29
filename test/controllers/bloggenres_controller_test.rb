require "test_helper"

class BloggenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloggenres_index_url
    assert_response :success
  end

  test "should get new" do
    get bloggenres_new_url
    assert_response :success
  end

  test "should get create" do
    get bloggenres_create_url
    assert_response :success
  end

  test "should get edit" do
    get bloggenres_edit_url
    assert_response :success
  end

  test "should get update" do
    get bloggenres_update_url
    assert_response :success
  end
end
