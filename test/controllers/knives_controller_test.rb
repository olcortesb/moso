require 'test_helper'

class KnivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @knife = knives(:one)
  end

  test "should get index" do
    get knives_url
    assert_response :success
  end

  test "should get new" do
    get new_knife_url
    assert_response :success
  end

  test "should create knife" do
    assert_difference('Knife.count') do
      post knives_url, params: { knife: { code: @knife.code, tag: @knife.tag, url: @knife.url } }
    end

    assert_redirected_to knife_url(Knife.last)
  end

  test "should show knife" do
    get knife_url(@knife)
    assert_response :success
  end

  test "should get edit" do
    get edit_knife_url(@knife)
    assert_response :success
  end

  test "should update knife" do
    patch knife_url(@knife), params: { knife: { code: @knife.code, tag: @knife.tag, url: @knife.url } }
    assert_redirected_to knife_url(@knife)
  end

  test "should destroy knife" do
    assert_difference('Knife.count', -1) do
      delete knife_url(@knife)
    end

    assert_redirected_to knives_url
  end
end
