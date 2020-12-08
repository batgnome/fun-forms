require "application_system_test_case"

class MasterFormsTest < ApplicationSystemTestCase
  setup do
    @master_form = master_forms(:one)
  end

  test "visiting the index" do
    visit master_forms_url
    assert_selector "h1", text: "Master Forms"
  end

  test "creating a Master form" do
    visit master_forms_url
    click_on "New Master Form"

    fill_in "Dec name", with: @master_form.dec_name
    fill_in "Nok name", with: @master_form.nok_name
    fill_in "Nok phone number", with: @master_form.nok_phone_number
    click_on "Create Master form"

    assert_text "Master form was successfully created"
    click_on "Back"
  end

  test "updating a Master form" do
    visit master_forms_url
    click_on "Edit", match: :first

    fill_in "Dec name", with: @master_form.dec_name
    fill_in "Nok name", with: @master_form.nok_name
    fill_in "Nok phone number", with: @master_form.nok_phone_number
    click_on "Update Master form"

    assert_text "Master form was successfully updated"
    click_on "Back"
  end

  test "destroying a Master form" do
    visit master_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Master form was successfully destroyed"
  end
end
