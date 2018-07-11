require "application_system_test_case"

class DjsTest < ApplicationSystemTestCase
  setup do
    @dj = djs(:one)
  end

  test "visiting the index" do
    visit djs_url
    assert_selector "h1", text: "Djs"
  end

  test "creating a Dj" do
    visit djs_url
    click_on "New Dj"

    fill_in "Description", with: @dj.description
    fill_in "Dj Check", with: @dj.dj_check
    fill_in "Image", with: @dj.image
    fill_in "Location", with: @dj.location
    fill_in "Name", with: @dj.name
    fill_in "Portfolio", with: @dj.portfolio
    fill_in "Rate", with: @dj.rate
    fill_in "User", with: @dj.user_id
    click_on "Create Dj"

    assert_text "Dj was successfully created"
    click_on "Back"
  end

  test "updating a Dj" do
    visit djs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dj.description
    fill_in "Dj Check", with: @dj.dj_check
    fill_in "Image", with: @dj.image
    fill_in "Location", with: @dj.location
    fill_in "Name", with: @dj.name
    fill_in "Portfolio", with: @dj.portfolio
    fill_in "Rate", with: @dj.rate
    fill_in "User", with: @dj.user_id
    click_on "Update Dj"

    assert_text "Dj was successfully updated"
    click_on "Back"
  end

  test "destroying a Dj" do
    visit djs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dj was successfully destroyed"
  end
end
