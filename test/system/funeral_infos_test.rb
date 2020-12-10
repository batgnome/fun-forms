require "application_system_test_case"

class FuneralInfosTest < ApplicationSystemTestCase
  setup do
    @funeral_info = funeral_infos(:one)
  end

  test "visiting the index" do
    visit funeral_infos_url
    assert_selector "h1", text: "Funeral Infos"
  end

  test "creating a Funeral info" do
    visit funeral_infos_url
    click_on "New Funeral Info"

    fill_in "Current date and time", with: @funeral_info.current_date_and_time
    fill_in "Fun dir", with: @funeral_info.fun_dir
    fill_in "Fun dir email", with: @funeral_info.fun_dir_email
    fill_in "Fun home", with: @funeral_info.fun_home
    fill_in "Fun title", with: @funeral_info.fun_title
    click_on "Create Funeral info"

    assert_text "Funeral info was successfully created"
    click_on "Back"
  end

  test "updating a Funeral info" do
    visit funeral_infos_url
    click_on "Edit", match: :first

    fill_in "Current date and time", with: @funeral_info.current_date_and_time
    fill_in "Fun dir", with: @funeral_info.fun_dir
    fill_in "Fun dir email", with: @funeral_info.fun_dir_email
    fill_in "Fun home", with: @funeral_info.fun_home
    fill_in "Fun title", with: @funeral_info.fun_title
    click_on "Update Funeral info"

    assert_text "Funeral info was successfully updated"
    click_on "Back"
  end

  test "destroying a Funeral info" do
    visit funeral_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funeral info was successfully destroyed"
  end
end
