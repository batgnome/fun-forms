require 'test_helper'

class MasterFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_form = master_forms(:one)
  end

  test "should get index" do
    get master_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_master_form_url
    assert_response :success
  end

  test "should create master_form" do
    assert_difference('MasterForm.count') do
      post master_forms_url, params: { master_form: { dec_name: @master_form.dec_name, nok_name: @master_form.nok_name, nok_phone_number: @master_form.nok_phone_number } }
    end

    assert_redirected_to master_form_url(MasterForm.last)
  end

  test "should show master_form" do
    get master_form_url(@master_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_form_url(@master_form)
    assert_response :success
  end

  test "should update master_form" do
    patch master_form_url(@master_form), params: { master_form: { dec_name: @master_form.dec_name, nok_name: @master_form.nok_name, nok_phone_number: @master_form.nok_phone_number } }
    assert_redirected_to master_form_url(@master_form)
  end

  test "should destroy master_form" do
    assert_difference('MasterForm.count', -1) do
      delete master_form_url(@master_form)
    end

    assert_redirected_to master_forms_url
  end
end
