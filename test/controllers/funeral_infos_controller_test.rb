require 'test_helper'

class FuneralInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funeral_info = funeral_infos(:one)
  end

  test "should get index" do
    get funeral_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_funeral_info_url
    assert_response :success
  end

  test "should create funeral_info" do
    assert_difference('FuneralInfo.count') do
      post funeral_infos_url, params: { funeral_info: { current_date_and_time: @funeral_info.current_date_and_time, fun_dir: @funeral_info.fun_dir, fun_dir_email: @funeral_info.fun_dir_email, fun_home: @funeral_info.fun_home, fun_title: @funeral_info.fun_title } }
    end

    assert_redirected_to funeral_info_url(FuneralInfo.last)
  end

  test "should show funeral_info" do
    get funeral_info_url(@funeral_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_funeral_info_url(@funeral_info)
    assert_response :success
  end

  test "should update funeral_info" do
    patch funeral_info_url(@funeral_info), params: { funeral_info: { current_date_and_time: @funeral_info.current_date_and_time, fun_dir: @funeral_info.fun_dir, fun_dir_email: @funeral_info.fun_dir_email, fun_home: @funeral_info.fun_home, fun_title: @funeral_info.fun_title } }
    assert_redirected_to funeral_info_url(@funeral_info)
  end

  test "should destroy funeral_info" do
    assert_difference('FuneralInfo.count', -1) do
      delete funeral_info_url(@funeral_info)
    end

    assert_redirected_to funeral_infos_url
  end
end
