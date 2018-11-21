require "application_system_test_case"

class DimensionsTest < ApplicationSystemTestCase
  setup do
    @dimension = dimensions(:one)
  end

  test "visiting the index" do
    visit dimensions_url
    assert_selector "h1", text: "Dimensions"
  end

  test "creating a Dimension" do
    visit dimensions_url
    click_on "New Dimension"

    fill_in "Title", with: @dimension.title
    click_on "Create Dimension"

    assert_text "Dimension was successfully created"
    click_on "Back"
  end

  test "updating a Dimension" do
    visit dimensions_url
    click_on "Edit", match: :first

    fill_in "Title", with: @dimension.title
    click_on "Update Dimension"

    assert_text "Dimension was successfully updated"
    click_on "Back"
  end

  test "destroying a Dimension" do
    visit dimensions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dimension was successfully destroyed"
  end
end
