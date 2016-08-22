require 'test_helper'

class DreamersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dreamers_new_url
    assert_response :success
  end

  test "should get edit" do
    get dreamers_edit_url
    assert_response :success
  end

  test "should get index" do
    get dreamers_index_url
    assert_response :success
  end

  test "should get show" do
    get dreamers_show_url
    assert_response :success
  end

end
