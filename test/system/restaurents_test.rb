require "application_system_test_case"

class RestaurentsTest < ApplicationSystemTestCase
  setup do
    @restaurent = restaurents(:one)
  end

  test "visiting the index" do
    visit restaurents_url
    assert_selector "h1", text: "Restaurents"
  end

  test "creating a Restaurent" do
    visit restaurents_url
    click_on "New Restaurent"

    fill_in "Details", with: @restaurent.details
    fill_in "Location", with: @restaurent.location
    fill_in "Name", with: @restaurent.name
    click_on "Create Restaurent"

    assert_text "Restaurent was successfully created"
    click_on "Back"
  end

  test "updating a Restaurent" do
    visit restaurents_url
    click_on "Edit", match: :first

    fill_in "Details", with: @restaurent.details
    fill_in "Location", with: @restaurent.location
    fill_in "Name", with: @restaurent.name
    click_on "Update Restaurent"

    assert_text "Restaurent was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurent" do
    visit restaurents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurent was successfully destroyed"
  end
end
