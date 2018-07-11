require 'test_helper'

class DjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dj = djs(:one)
  end

  test "should get index" do
    get djs_url
    assert_response :success
  end

  test "should get new" do
    get new_dj_url
    assert_response :success
  end

  test "should create dj" do
    assert_difference('Dj.count') do
      post djs_url, params: { dj: { description: @dj.description, dj_check: @dj.dj_check, image: @dj.image, location: @dj.location, name: @dj.name, portfolio: @dj.portfolio, rate: @dj.rate, user_id: @dj.user_id } }
    end

    assert_redirected_to dj_url(Dj.last)
  end

  test "should show dj" do
    get dj_url(@dj)
    assert_response :success
  end

  test "should get edit" do
    get edit_dj_url(@dj)
    assert_response :success
  end

  test "should update dj" do
    patch dj_url(@dj), params: { dj: { description: @dj.description, dj_check: @dj.dj_check, image: @dj.image, location: @dj.location, name: @dj.name, portfolio: @dj.portfolio, rate: @dj.rate, user_id: @dj.user_id } }
    assert_redirected_to dj_url(@dj)
  end

  test "should destroy dj" do
    assert_difference('Dj.count', -1) do
      delete dj_url(@dj)
    end

    assert_redirected_to djs_url
  end
end
