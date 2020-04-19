require 'test_helper'

class NumpreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get numpre_index_url
    assert_response :success
  end

  test "should get create" do
    get numpre_create_url
    assert_response :success
  end

  test "should get show" do
    get numpre_show_url
    assert_response :success
  end

end
